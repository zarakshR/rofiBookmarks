BOOKMARKS="$HOME/Code/rofiBookmarks/exampleBookmarks"
BROWSER="firefox-beta"

num=$(cat $BOOKMARKS | wc -l)
name=$(cat $BOOKMARKS | cut -d '|' -f 1 | rofi -dmenu -l $num -p Bookmarks)

if [[ -n $name ]]; then
    url=$(cat $BOOKMARKS | grep "$name" | cut -d '|' -f 2)
    $BROWSER $url
fi
