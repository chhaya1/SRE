# Problem 1: ls command

# Includes all files, including hidden files
ls -a  
# Sizes are listed in human readable format
ls -lh
# Files are ordered by recency
ls -lht
# Output is colourised
ls -lh --color

# Problem 3: Script that counts the number of files of each type (e.g., .txt, .sh) in a target directory.
find . -type f | sed 's|^.*/||' | sort | uniq -c | sort -nr

# Problem 4: Script that copies all files matching certain pattern from one directory to another. Script should write logs in a file, which can be used for later debugging.

# Problem 5: Bash command hat lists all files in a directory and its sub-directories.
find ./ -type f

# Problem 6: Create a script that displays CPU stats, Free RAM, and disk usage and logs it to a file.
{
  echo "CPU Stats:"
  mpstat 1 1 | tail -n +4 | head -n -1
  echo
  echo "Free RAM:"
  free -h
  echo
  echo "Disk Usage:"
  df -h
} >> system_stats.log

# Problem 7: identify top 5 most expensive processes running on the system in terms of Memory and CPU.

ps aux --sort=%cpu | head -n 6
