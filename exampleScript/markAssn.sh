#!/bin/sh

###
## Implement the requirements below:
##
## The Nice-to-have's are optional but may be beneficial to your course.
###

echo "Hello Classy World! My volumes have been mounted to the Classy host and I am starting to build-out my business logic.\n"
echo "The volumes: "
echo "  1. On the Classy VM:: Tech Staff Mount HOST_DIR:PERSIST_DIR"
echo "  2. AutoTest Mounts Docker Volume From Classy VM --> Your AutoGrade Container:: PERSIST_DIR:PERSIST_DIR"
echo "  Thus, the PERSIST_DIR of your .env file is also the OUTPUT folder in your AutoGrade container."

## CONTAINER INPUT

echo 'CONTAINER INPUT:\n'
echo '1. "/assn" directory contains the cloned student or team repository that is checked out to the commit SHA of the "git push" command.'
echo '2. "ASSIGNMENT" environment variable contains the string of the deliverable to be marked. ie. "d3".'

## OUTPUT ASSETS

echo 'CONTAINER OUTPUT:\n'
echo '1. "report.json" file is produced.'

## Requirements:
##
##  1. Produce the Container Output listed above:
##

echo '{
	"scoreOverall": 100,
	"scoreCover": 34,
	"scoreTest": 60,
	"feedback": "Your container has completed. This string is the feedback property in the report.json file placed in the `/output` folder.",
	"passNames": [],
	"skipNames": [],
	"failNames": [],
	"errorNames": [],
	"result": "FAIL",
	"attachments": [],
	"custom": {}
      }' > /output/staff/report.json

echo "JSON 'report.json' contents: `cat /output/staff/report.json`\n\n"

## Nice to Have's:
## 
##  1. Create data to pass back to the student over HTTP by passing it into the /student folder.
##  2. Log data in the /admin folder that ONLY instructors can see.
##  3. Log data in the /staff folder that your TAs can see.
## 
