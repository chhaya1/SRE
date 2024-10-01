# Problem 1: curl command to google.com. Store the output to two files at a time and suppress the output to stdout. (ss)

    curl -s https://www.google.com | tee file1.html file2.html > /dev/null


# Problem 4:

    # Download the file using command and not the GUI
    wget https://raw.githubusercontent.com/shashikarsiddharth/sre-devops-cohort-examples/main/resources/nginx-dummy.log 

    # Parse the different status code from the Nginx access log file. *
    awk '{print $9}' nginx-dummy.log | sort | uniq -c | sort -nr


# Problem 5: (ss)

    # Download the image JSON file.
    wget https://raw.githubusercontent.com/shashikarsiddharth/sre-devops-cohort-examples/main/resources/image.json

    # Download the images in the JSON file.
    jq -r '.[].url' image.json | xargs -n 1 curl -O
