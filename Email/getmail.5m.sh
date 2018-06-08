#!/usr/bin/env bash

# <bitbar.title>Get mail alter</bitbar.title>
# <bitbar.version>v0.0.1</bitbar.version>
# <bitbar.author>Harold Duan</bitbar.author>
# <bitbar.author.github>haroldduan</bitbar.author.github>
# <bitbar.desc>Show the getmail unread and inbox email</bitbar.desc>
# <bitbar.image>:incoming_envelope:</bitbar.image>

getmail=/usr/local/bin/getmail
($getmail -n -r ~/.getmail/getmailrc)
#icon_mail=":inbox_tray:"
#icon_mail="📥"
new_counter=$(find ~/.mutt/mail/inbox/new -type f | wc -l)
cur_counter=$(find ~/.mutt/mail/inbox/cur -type f | wc -l)
#ret_val=$($getmail -v -n -r ~/.getmail/getmailrc)
#echo "$icon_mail$new_counter"
min_counter=0
if [ $new_counter -le $min_counter ]; then
	icon_mail="✉️"
else
	icon_mail=":incoming_envelope:"
fi
#echo "|dropdown=false image=$icon_mail"
echo "$icon_mail"
echo "---"
echo ":bomb:$new_counter"
echo "---"
echo "🕳️$cur_counter"
