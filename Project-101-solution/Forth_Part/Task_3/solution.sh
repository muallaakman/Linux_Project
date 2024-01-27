awk '/Invalid user/' auth.log | awk -F"]: " '{print $2}' | awk -F" " '{print $3}' | sort | uniq -c > result.txt

or

cat auth.log | grep "Failed password for invalid user" | awk '{print $11}' | sort | uniq -c > result.txt