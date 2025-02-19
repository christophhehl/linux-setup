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

wallpaper_engine ()
{
	linux-wallpaperengine --screen-root eDP-1 "/home/christoph/.steam/steam/steamapps/workshop/content/431960/$1" ^
}

selected=$(find "/home/christoph/.config/wallpaper/" -maxdepth 1 -type f -printf '%f\n' | sed 's/\.[^.]*$//' | fuzzel --dmenu -p "Theme: ")

if [ -z $(find_file "$selected")  ]
then
	echo "File not found."
else
	killall -q linux-wallpaperengine
	if [[ $(find_file "$selected") =~ \.txt$ ]]; then
		number=$(< $(find_file "$selected"))
		wallpaper_engine "$number"
	else
		wallpaper $(realpath $(find_file "$selected"))
	fi
fi
