#!/bin/bash

function searchin(){
  reset;
  echo -e "\033[1;34mSearchin...\033[0m"
  if [[ $1 == "" ]] || [[ $1 == "-h" ]]
  then
    printf "Searchin recursivly searches all files below the currenty directory for one or \ntwo keywords using grep. Error messages are not displayed, and results are \nprinted out in a clean and colored forman\n
    -a:
      Display the five lines around the search result line\n
    -h:
      Show this menu"
  fi
  if [[ $1 == "-a" ]]
  then
    if [ "$#" -eq 3 ]
    then
      grep --context=5 -rniI --color --exclude='*.log' -E $2.*$3\|$3.*$2 2>/dev/null
    else
      grep --context=5 -rniI --color --exclude='*.log' -E $2 2>/dev/null
    fi
  else
    if [ "$#" -eq 2 ]
    then
       grep -rniI --color --exclude='*.log' -E $1.*$2\|$2.*$1 2>/dev/null
    else
      grep -rniI --color --exclude='*.log' -E $1 2>/dev/null
    fi 
  fi
}

function searchandrescue(){
  find ./ -iname "*$1*" 2 > /dev/null
  file_list=$(find ./ -iname "*$1*" 2 > /dev/null)
  echo
  for file in $file_list
  do
    echo -e "\e[1;95m$file\e[0m"
    grep -ni --color $2 $file 2 > /dev/null
    echo
  done
}
#insert my searchin function here somewhere
