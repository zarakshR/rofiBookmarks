BOOKMARKS="$HOME/Code/rofiBookmarks/exampleBookmarks"
BROWSER="firefox-beta"

# This calls a rofi -dmenu instance with the names of the bookmarks, the output (i.e., $name) is the selected entry
name=$(cat $BOOKMARKS | cut -d '|' -f 1 | rofi -dmenu -p Deskman)

if [[ -n $name ]]; then
    url=$(cat $BOOKMARKS | grep "$name" | cut -d '|' -f 2)
    $BROWSER $url
fi