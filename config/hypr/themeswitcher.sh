find_file ()
{
	find "/home/christoph/.config/wallpaper/" -name "$1.*" | head -1
}

get_full_path ()
{
	realpath $1
}

wallpaper ()
{
	hyprctl hyprpaper preload "$1"
	hyprctl hyprpaper wallpaper ",$1"	
}

selected=$(find "/home/christoph/.config/wallpaper/" -maxdepth 1 -type f -printf '%f\n' | sed 's/\.[^.]*$//' | fuzzel --dmenu -p "Theme: ")

if [ -z $(find_file "$selected")  ]
then
	echo "File not found."
else
	wallpaper $(realpath $(find_file "$selected"))
fi
