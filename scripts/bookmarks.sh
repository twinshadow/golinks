#!/bin/sh

while read -r line; do
	$golinks add $line
done <<EOF
b1 "http://www.bunny1.org/%s"
ddg "http://duckduckgo.com/?q=%s"
g "https://www.google.com/search?q=%s&btnK",
gdef "http://www.google.com/search?q=define%%3A+%s&hl=en&lr=&oi=definel&defl=all",
gh "https://github.com/search?q=%s&ref=opensearch",
gim "https://www.google.com/search?q=%s&um=1&ie=UTF-8&hl=en&tbm=isch",
gl "https://www.google.com/search?q=%s&btnI",
gm "http://maps.google.com/maps?q=%s",
gmail "https://mail.google.com/mail"
go "https://golang.org/search?q=%s",
imdb "http://www.imdb.com/find?q=%s",
man "http://man.he.net/?topic=%s&section=all"
py "https://docs.python.org/2/search.html?q=%s",
py3 "https://docs.python.org/3/search.html?q=%s",
wp "http://en.wikipedia.org/?search=%s",
yn "http://yubnub.org/parser/parse?command=%s"
yt "http://www.youtube.com/results?search_type=search_videos&search_sort=relevance&search_query=%s&search=Search",
EOF
