wallpaper ()
{
	hyprctl hyprpaper preload "$1"
	hyprctl hyprpaper wallpaper ",$1"	
}

selected=$(echo "Flowers
City" | fuzzel --dmenu -p "Theme: ")

if [ "$selected" = "Flowers" ]
then
	wallpaper "/home/christoph/.config/wallpaper/1313942.png"
elif [ "$selected" = "City" ]
then
	wallpaper "/home/christoph/.config/wallpaper/1322308.jpeg"
else
	echo "No thme selected."
fi

