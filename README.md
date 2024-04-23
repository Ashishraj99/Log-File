## Log File Monitor and Analyzer

This script continuously monitors a specified log file for new entries, displays them in real-time, and performs basic analysis on keywords or patterns.

**Prerequisites:**

* Linux/Unix system with Bash shell

**Usage:**

1. Save the script as `log-monitor.sh`.
2. Modify the `KEYWORDS` array in the script to define the keywords or patterns you want to track.
3. Replace `/path/to/your/logfile` with the actual path to your log file. like my file name is 'logfile'.
4. Make the script executable using `chmod +x log-monitor.sh`.
5. Run the script: `./log-monitor.sh`

**To stop monitoring, press Ctrl+C.**

**Analysis Summary:**

The script keeps track of the occurrences of each keyword and provides a summary report at the end, including:

* Count of occurrences for each keyword.
* Top error message (assuming only "error" messages are present).
