# Nginx Log Analyzer

## Project Overview
The Nginx Log Analyzer is a command-line tool that processes Nginx access logs and extracts useful statistics. It helps monitor server access patterns, identify high-traffic IP addresses, and track the most requested paths. This tool is useful for system administrators, developers, and anyone looking to analyze server logs efficiently.

### Project URL
[Nginx Log Analyzer on Roadmap.sh](https://roadmap.sh/projects/nginx-log-analyser)

## Features
- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

## Prerequisites
- Unix-based operating system
- Bash shell
- Nginx access log file

## Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/username/nginx-log-analyzer.git
   ```
2. Navigate to the project directory:
   ```bash
   cd nginx-log-analyzer
   ```
3. Make the script executable:
   ```bash
   chmod +x nginx-log-analyzer.sh
   ```

## Usage
To run the script, use the following command:
```bash
sudo ./nginx-log-analyzer.sh /path/to/nginx-access.log
```

## Example Output
```
==============================
Top 5 IP addresses with the most requests
==============================
   1087 178.128.94.113
   1087 142.93.136.176
   1087 138.68.248.85
   1086 159.89.185.30
    277 86.134.118.70
```

## Note
- Run the script with `sudo` to ensure it has the necessary permissions to read the log file.

## License
This project is licensed under the MIT License.

## Author
[Jacob Akotuah](https://github.com/Jacobjayk)

## Acknowledgments
- [Nginx Documentation](https://nginx.org/en/docs/)
- [Bash Scripting Guide](https://www.gnu.org/software/bash/manual/bash.html)

