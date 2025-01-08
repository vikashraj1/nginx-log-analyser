
# 📊 Nginx Log Analyser 

A simple tool to analyze logs from the command line.

This project is created as part of the [Nginx Log Analyzer project](https://roadmap.sh/projects/nginx-log-analyser).


---

## 🚀 Features
- Parses and analyzes Nginx access logs.
- Displays useful metrics such as:
  - Top 5 IP addresses with the most requests
  - Top 5 most requested paths
  - Top 5 response status codes
  - Top 5 user agents
- Easy to use with a single command.

---

## 📋 Prerequisites

Ensure you have the following:

- **Bash** (available on most Unix/Linux systems)
- **Nginx access logs** in the standard format
- **Required binaries** (used in the script): `awk`, `sed`, `uniq`, `sort`, `head`

> To check if the necessary binaries are installed and available in your system's path, run the following command:

```bash
command -v awk sed uniq sort head
```
OR
```bash
which awk sed uniq sort head
```

---

## ⚙️ Usage

Make the script executable:
```bash
chmod +x analyze.sh
```
Run the script by providing the path to your Nginx log file:

```bash
./analyse.sh example_nginx_log
```


**Sample Output:**
```text
Top 5 IP addresses with the most requests:
178.128.94.113 - 1087 requests
142.93.136.176 - 1087 requests
138.68.248.85 - 1087 requests
159.89.185.30 - 1086 requests
86.134.118.70 - 277 requests

Top 5 most requested paths:
/v1-health - 4560 requests
/ - 270 requests
/v1-me - 232 requests
/v1-list-workspaces - 127 requests
/v1-list-timezone-teams - 75 requests

```


---

## 🖍️ Log Format Assumption
The script assumes that your Nginx logs follow this standard format:

```
127.0.0.1 - - [08/Jan/2025:14:15:42 +0000] "GET /index.html HTTP/1.1" 200 1234 "-" "Mozilla/5.0"
```

If your log format differs, adjust the parsing logic accordingly in `analyse.sh`.

---

## 📁 Project Structure
```
.
├── analyse.sh       # The main log analysis script
├── example_nginx_log # Sample Nginx log file
└── README.md        # Documentation
```

---

## 💃 License
This project is open-source and available under the MIT License.

---

## 🤝 Contributing
We welcome contributions! If you have ideas for improvements or new features, feel free to open a pull request or submit an issue.

---

## 💬 Support
If you encounter any issues or have questions, feel free contact me directly.

Happy Logging! 🎉

