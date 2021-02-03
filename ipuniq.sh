cat access.log | awk '{print $16}' |uniq -c | head -n 4

