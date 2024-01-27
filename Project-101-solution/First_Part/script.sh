cat event_history.csv | grep -i paul | grep -i Terminateinstances | grep -Eo "i-[a-zA-Z0-9]{17}" | sort | uniq > result.txt

OR

cat event_history.csv |  grep -i paul | grep -i TerminateInstances | grep -Eo i-.{17} | sort | uniq | tee result.txt
