#!bin/bash
shell_scripting
to begin you should have all necessary files (not exactly, you're prompted if a file is missing)

config.env
functions.sh
reminder.sh
submissions.txt
run the script create_environment in the root directory of the repo

Note:
create_environment script runs from the root of the repo, and startup runs in the submission_reminder_app directory
create_environment has enough error handling and files availability checks for all of the necessary tasks (the ones i saw atleast)
to retry the experiment just remove the directory submission_reminder_app, then you can run create_environment again to see the magic happen
rm -r submission_reminder_app/

