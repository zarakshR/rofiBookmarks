# rofiBookmarks

Access your favourite bookmarks from rofi

This script is still in its infancy so configuration is very clunky and it does very few things, but it has no crash-causing or otherwise major errors.

# Dependencies

You need to have rofi installed.

# Usage
`./rofiBookmarks.sh will` pull up a rofi -drun window with a list of read from a file. Hit enter to open the selected entry in browser.

To change browser used to open bookmarks edit

`BROWSER=firefox-beta` in rofiBookmarks.py

to

`BROWSER=whatever-browser-you-want-here`

To change location of bookmarks file path edit

`BOOKMARKS=exampleBookmarks` similarly

The rofi window will dynamically change the number of lines based on the no. of entries in the bookmarks file. To change this behaviour edit

`name=$(cat $BOOKMARKS | cut -d '|' -f 1 | rofi -dmenu -l $num -p Bookmarks)`

to

`name=$(cat $BOOKMARKS | cut -d '|' -f 1 | rofi -dmenu -l whatever-number-of-lines-you-want -p Bookmarks)`

Additionally, you can remove the line that says,
`num=$(cat $BOOKMARKS | wc -l)`
(Do not do this without also editing the "name" as above)
