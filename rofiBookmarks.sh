name=$(cat exampleBookmarks | cut -d '|' -f 1 | rofi -dmenu)
url=$(cat exampleBookmarks | grep "$name" | cut -d '|' -f 2)
firefox-beta $url