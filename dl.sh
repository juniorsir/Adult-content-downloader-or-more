echo -e $G "╠═▶ [7] Play Background"
echo -e $G "╠═▶ [8] Exit Termux-YDL"
}


# Read the URL from the user
echo -e $G
 read -p  " Enter the video URL:" URL

# Loop until the user chooses to exit
while true; do
    show_options
    read -p "Enter your choice [1-8]: " choice


      case $choice in

        1)
            echo "-x --no-mtime -o /data/data/com.termux/files/home/storage/YouTube/%(title)s.%(ext)s -f \"bestaudio\" --extract-audio --audio-format mp3 --audio-quality 0" > ~/.config/yt-dlp/config
            yt-dlp $1
            echo -e $G"\n   Finished...\n"$N
            sleep 1
            exit
        ;;

        2)

            echo "--no-mtime -o /data/data/com.termux/files/home/storage/YouTube/%(title)s.%(ext)s -f \"bestvideo[height<=360][ext=mp4]+bestaudio[ext=m4a]\"" > ~/.config/yt-dlp/config
            yt-dlp $1
            echo -e $G"\n   Finished...\n"$N
            sleep 1
            exit
        ;;

        3)
            echo "--no-mtime -o /data/data/com.termux/files/home/storage/YouTube/%(title)s.%(ext)s -f \"bestvideo[height<=480][ext=mp4]+bestaudio[ext=m4a]\"" > ~/.config/yt-dlp/config
            yt-dlp $1
            echo -e $G"\n   Finished...\n"$N
            sleep 1
            exit
        ;;
        4)
            echo "--no-mtime -o /data/data/com.termux/files/home/storage/YouTube/%(title)s.%(ext)s -f \"bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]\"" > ~/.config/yt-dlp/config
            yt-dlp $1
            echo -e $G"\n   Finished...\n"$N
            sleep 1
            exit
        ;;

        5)
            echo "--no-mtime -o /data/data/com.termux/files/home/storage/YouTube/%(title)s.%(ext)s -f \"bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]\"" > ~/.config/yt-dlp/config
            yt-dlp $1
            echo -e $G"\n   Finished...\n"$N
            sleep 1
            exit
        ;;

        6)
            echo "--no-mtime -o /data/data/com.termux/files/home/storage/YouTube/%(title)s.%(ext)s -f \"bestvideo[height<=2160][ext=mp4]+bestaudio[ext=m4a]\"" > ~/.config/yt-dlp/config
            yt-dlp $1
            echo -e $G"\n   Finished...\n"$N
            sleep 1
            exit
        ;;

        7)
            echo "--no-mtime -o /data/data/com.termux/files/home/storage/YouTube/%(title)s.%(ext)s -f \"bestvideo[height<=2160][ext=mp4]+bestaudio[ext=m4a]\"" > ~/.config/yt-dlp/config
            yt-dlp -o - | mpv - $1
            echo -e $G"\n   Finished...\n"$N
            sleep 1
            exit
        ;;

        8)
          echo -e $C "Exiting.."
            exit 0
            ;;
        *)
            echo "Invalid option. Please choose a number between 1 and 8."
            ;;
    esac
done


