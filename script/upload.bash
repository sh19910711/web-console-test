clientid='3e7a4deb7ac67da'
img=$1
res=$(curl -sH "Authorization: Client-ID $clientid" -F "image=@$img" "https://api.imgur.com/3/upload")
echo $res | grep -qo '"status":200' && link=$(echo $res | sed -e 's/.*"link":"\([^"]*\).*/\1/' -e 's/\\//g')
echo $link
