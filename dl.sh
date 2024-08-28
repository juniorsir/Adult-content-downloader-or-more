
#!/bin/bash

# Ensure yt-dlp is installed
if ! command -v yt-dlp &> /dev/null; then
    echo "yt-dlp could not be found. Please install it first."
    exit 1
fi

# Prompt the user to input the any platform video URL
echo "Enter the any video URL:"
read -r VIDEO_URL

# Check if the user provided a URL
if [ -z "$VIDEO_URL" ]; then
    echo "No URL entered. Exiting."
    exit 1
fi

# Confirm the URL is from xHamster
if [[ "$VIDEO_URL" != *"xhamster.com"* ]]; then
    echo "The provided URL is not from xHamster. Please provide a valid xHamster video URL."

fi

# List available formats for the user to choose from
echo "Fetching available video formats..."
yt-dlp -F "$VIDEO_URL"

# Prompt user to choose a format code
echo "Enter the format code for the desired quality (e.g., 137 for 1080p):"
read -r FORMAT_CODE

# Check if the user provided a format code
if [ -z "$FORMAT_CODE" ]; then
    echo "No format code entered. Downloading default video format..."
    yt-dlp "$VIDEO_URL"
else
    # Download the video using the chosen format code
    echo "Downloading the video in the chosen quality..."
    yt-dlp -f "$FORMAT_CODE" "$VIDEO_URL" -o  "/data/data/com.termux/files/home/storage/downloads/%(title)s.%>
fi


echo "Download complete!"


