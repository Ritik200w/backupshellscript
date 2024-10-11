* Backup Shell Script

This repository contains a simple shell script that automates the process of backing up files from a source directory to a destination directory and logs the completion time in a log file.
Script Functionality

    Source Directory: /home/ritik/shellfolder
    Destination Directory: /home/ritik/shellfolder/backups
    Log File: /home/ritik/shellfolder/access.log

How it Works:

    The script checks if the destination directory exists. If not, it creates it.
    It then copies all files from the source directory to the destination directory.
    The date and time of the backup are logged in the access.log file.

Usage:

    Make the script executable:

    bash

chmod +x backup.sh

Run the script:

bash

    ./backup.sh

The script will copy the files and log the backup time.



* Setting Up a Cron Job

You can automate this backup process using a cron job, which will run the script at specific times. To run the backup script daily at 2:00 AM, follow these steps:

    Open the crontab editor:

    bash

crontab -e

Add the following line at the bottom of the file:

bash

    0 2 * * * /home/ritik/shellfolder/backup.sh

    This cron job will:
        Run every day (* * *) at 2:00 AM (0 2).
        Execute the backup.sh script located in /home/ritik/shellfolder.

    Save and close the crontab editor.

Cron Job Explanation:

    0 2 * * *: This means "at 2:00 AM every day."
        0 is the minute (0th minute of the hour).
        2 is the hour (2 AM).
        The three asterisks (* * *) mean every day, month, and day of the week.
    /home/ritik/shellfolder/backup.sh: This is the path to the shell script that will be executed.

The cron job will now ensure that the backup runs automatically at 2:00 AM every day without requiring manual execution.
