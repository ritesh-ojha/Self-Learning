#!/bin/bash

source logo.sh



echo "			Day 1"
echo ""

echo "echo ""			- Use to print into terminal"
echo "mkdir <file>		- Use to create directory"
echo "touch <file>		- Use to create file"
echo "mv <old> <new>		- Use to rename file"
echo "$var			- Use to get variable value"
echo ""

echo "			Day 2"
echo ""

echo "help			- Use for Terminal help"
echo "--help			- Use to get help for particular command [ ls --help ]"
echo "ls			- Use for listing files and directory"
echo "ls -a			- Use to see all files and directory"
echo "ls -l			- Use to see detailes of list of directory"
echo "ls -h			- Use to see the size of of listing files"
echo "ls -alh			- Combine command for three task into one"
echo "pwd			- Print working directory"
echo "cd /repo/			- change working directory"
echo "cd 			- Goto Home directory"
echo "cd -			- Goto previous directory"
echo "cp [s] [d]		- Copy file"
echo "cp [old] [new]		- Copy file with new name"
echo "cp -r [s] [d]		- Copy full directory	[ -r recursive ]"
echo "mv [s] [d]		- Move file"
echo "rm			- Remove file"
echo "rm -r [dir]		- Remove full directory"

echo ""
echo "			Day 3"
echo ""

echo "ln [p_o_T] [p_o_L]	- Use to create Hard Link btw files"
echo "ln [P_O_TD]/* [P_O_LD}	- Use to create Hard link of multiple files"
echo "unlink [P_O_L]		- Unlink Hard link of single file"
echo "unlink [P_O_LD]		- Unlink Hard link of multiple files"
echo "chgrp [group] [F/D]	- Change the Group of  Diles/ Directory"
echo "groups			- To see all groups"
echo "sudo chown [O] [F/D]	- Change the Owner of Files/ Directory"
echo "chmod [prm] [F/D]		- Change Permission of Files/ Directory" \
 "{ + : for Addition, - : fro removal, = : Exact} {u : User, g : group, o : Other}"
echo ""


echo ""
echo "			Day 4"
echo ""

echo "set -x				- To enable debug mode of shell script"
echo "set -e				- Exit the script when there is an Error"
echo "top					- Use to open the taskbar"
echo "ps -ef				- to see the running process with full details"
echo "grep					- Find the word "
echo "man <cmd>				- Show the documentation of command"
echo "curl <url>			- Get the file and show it content"
echo "wget <url>			- Download the file from url"
