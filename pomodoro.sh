#!/bin/bash

task_title=$1
time_to_complete=$2
function timer(){
  for i in $(seq $time_to_complete -1 1); do
     echo $i
     sleep 1m
  done
}

function notify(){
    notify-send -i face-cool "$1"
}

function main(){
  notify "Star working on $task"
  timer
  notify "Times Up dude. Take a break"
}

main ${@}
