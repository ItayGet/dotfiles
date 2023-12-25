#!/usr/bin/sh

echo starting new run >> ~/startuplog.txt
echo $0 >> ~/startuplog.txt
echo $1 >> ~/startuplog.txt
echo $2 >> ~/startuplog.txt
echo $3 >> ~/startuplog.txt
echo $4 >> ~/startuplog.txt
echo $5 >> ~/startuplog.txt
echo $6 >> ~/startuplog.txt
echo $7 >> ~/startuplog.txt
echo $8 >> ~/startuplog.txt
echo $9 >> ~/startuplog.txt
echo ${10} >> ~/startuplog.txt

i3-msg "workspace ${1}; exec ~/.config/i3/exec_ranger.sh"
sleep 1
i3-msg "workspace ${2}; exec /usr/bin/firefox"
sleep 1
i3-msg "workspace ${8}; exec whatsdesk"
sleep 1
i3-msg "workspace ${9}; exec /usr/bin/spotify" >> ~/startuplog.txt
sleep 1
i3-msg "workspace ${10}; exec /usr/bin/discord --no-sandbox" >> ~/startuplog.txt
