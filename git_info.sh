#!/bin/bash

spinner=( ooOoo oooOOoo ooOOOoo ooOOOOoo ooOOOOOoo )

gitInfo(){
  echo "Creating GIT Info"	
  spin &
  pid=$!
  mkdir git_info
  cd git_info
  echo "Current Branch:" > git_info.txt
  git branch >> git_info.txt
  echo "====================================================" >> git_info.txt
  echo "Last 10 commits:" >> git_info.txt
  git log -n 10 >> git_info.txt
  kill $pid
  echo ""
}

spin(){
     while [ 1 ]
      do	
	for i in "${spinner[@]}"
		do
			echo -ne "\r$i"
			sleep 0.2
		done
      done
}

gitInfo

