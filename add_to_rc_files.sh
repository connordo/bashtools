#!/bin/bash

echo "source ~/bashtools/.enviroment.sh" >> ~/.bashrc
echo "source ~/bashtools/.alias.sh" >> ~/.bashrc
echo "source ~/bashtools/.searchtoolkit.sh" >> ~/.bashrc
echo "source ~/bashtools/.gittools.sh" >> ~/.bashrc

echo "set completion-ignore-case on" >> ~/.inputrc

echo "Bash Tools added to .bashrc and .inputrc"
echo "Please close and reopen your bash terminal"

