#!/bin/bash

convert_file() {
  pod2man --errors=none \
          --center='Lucurious Api Documentation' \
          --release='Lucurious Labs Docs v1.0.0' \
          pods/$1.pod > build/$1.$2
  NEW_FILE=`echo "$1" | tr '[:lower:]' '[:upper:]'`
  sed -i "s/${NEW_FILE} 1/${NEW_FILE} ${2}/g" build/$1.$2
}

convert_file "lucur" 1
convert_file "wlu_vkall.h" 3
convert_file "wlu_freeup_vk" 3
convert_file "wlu_init_vk" 3
