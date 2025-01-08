if [ -z "$1" ]; then
  echo "Error: No file provided."
  exit 1
fi

echo "Top 5 IP addresses with the most requests:"
cat $1 | awk '{print $1}' | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'

echo ""
echo "Top 5 most requested paths:"
cat $1 | awk -F'"' '{print $2}' | awk '{print $2}' | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'

echo ""
echo "Top 5 response status codes:"
cat $1 | awk -F'"' '{print $3}' | awk '{print $1}' | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'

echo ""
echo "Top 5 user agents:"
cat $1 | awk -F'"' '{print $6}' | awk '{print $1}' | sed '/^-$/d' | sort | uniq -c | sort -rn | head -5 | awk '{print $2 " - " $1 " requests"}'

# Top 10 user agents (More detailed)
# cat $1 | awk -F'"' '{print $6}' | awk -F'(' '{print $1}' | sed '/^-$/d' | sort | uniq -c | sort -rn | head -10
