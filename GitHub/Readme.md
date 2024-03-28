# GitHub Cheatsheet

This cheatsheet provides a quick reference for common GitHub commands and actions.

## Creating a Repository

To create a new repository:

1. Navigate to your GitHub account.
2. Click on the "+" icon in the top right corner.
3. Select "New repository."
4. Fill out the necessary information and create the repository.

## Connect remote

First make empty repo in local:

git init

Connect with remote:

git remote add origin <git_repo_url>


## Branches

To list all branches:

git branch

To create a new branch:

git checkout -b <branch_name>

To switch to an existing branch:

git checkout <branch_name>

## Commits

To stage changes for commit:

git add .

git commit -m "Commit message"

To push changes to a remote repository:

git push origin <branch_name>

## Status

To get the status:

git status

## Changes

To see the changes of file 

git diff

## Log

To see the changes and commit log in local:

git log

## Pull Requests

To create a pull request:

1. Navigate to the repository on GitHub.
2. Click on the "Pull requests" tab.
3. Click on the "New pull request" button.
4. Select the branches you want to compare and review the changes.
5. Click on "Create pull request" and add a title and description.

## Merging

To merge a pull request:

1. Navigate to the pull request.
2. Review the changes and discussion.
3. Click on the "Merge pull request" button.
4. Confirm the merge.

## Updating Repository

To update your local repository with changes from the remote:

git pull origin <branch_name>


## Feedback

Feel free to reach out riteshojha2002@gmail.com Or create Issues with insights, recommendations, or questions.