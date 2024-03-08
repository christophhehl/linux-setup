selected=$(echo "Fire
Blue" | rofi -dmenu -p "Select theme")

echo "You selected $selected"

if [ "$selected" = "Fire" ]
then
	echo "1"
elif [ "$selected" = "Blue" ]
then
	echo "2"
else
	echo "3"
fi
