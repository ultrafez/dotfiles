#!/usr/bin/env bash

# Simple script to create a BitBucket repo for the current project, and set it as remote

username="asilcock"
accid="557058:6c6fb8a9-49bb-4255-9623-29653757c799"

echo 'Creates a BitBucket repo for a project, and sets the git remote'

read -p 'Repo name: ' reponame
read -p 'Password: ' -s password  # -s flag hides password text

echo -e "\nCreating repo..."

curl -X POST -u $username:$password -H "Content-Type: application/json" \
  https://api.bitbucket.org/2.0/repositories/$accid/$reponame \
  -d '{"scm": "git", "is_private": "true", "fork_policy": "no_public_forks" }'

echo -e "\n"

# Did curl succeed?
exit_status=$?
if [ $exit_status != 0 ]
  then
    echo 'Something went wrong; exiting'
    exit $exit_status
fi

echo 'Setting "origin" git remote'

git remote add origin git@bitbucket.org:$username/$reponame.git
