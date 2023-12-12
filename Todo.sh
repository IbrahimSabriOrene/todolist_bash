#!/bin/bash




target_dir=~/.secrets

function createTodo {
  # check if target directory exists using path (-p) if not create file
  if [[ ! -p $target_dir ]]; then
    mkdir -p "$target_dir"
  fi

  #check if Todo.txt exists. If not, create.
  if [[ ! -f $target_dir/Todo.txt ]];then
        
        touch $target_dir/Todo.txt #User does not exists.
  fi
  
}

# add todo needs to change, we need list type. 
function addTodo {
# Get the next line number
next_line_number="$(wc -l < "$target_dir/Todo.txt")"
next_line_number=$((next_line_number + 1))
echo "$next_line_number) $1" >> "$target_dir/Todo.txt"
echo "line added to the list"

}

function removeTodo {
  #add timer here.
  sed -i "${1}d" "$target_dir/Todo.txt" 
  echo "line ${1} removed"
}


if [[  "$1" == "-create" ]]; then
  createTodo
fi

# add check if variable is empty for error handling...

if [[ "$1" == "-add" ]]; then
  addTodo "$2"
fi

if [[ "$1" == "-rm" ]]; then
  removeTodo "$2"
fi


