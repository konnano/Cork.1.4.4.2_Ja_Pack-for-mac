#!/bin/bash
cd "$(dirname "$0")" || ${die?cd error}

path=$(pwd|rev|cut -c 1-20|rev)
current='Ja_Pack-for-mac'

if [[ $path =~ $current ]];then

 if [ -d /Applications/Cork.app/Contents/Resources ]
 then
  mv ja.lproj /Applications/Cork.app/Contents/Resources/
 else
  echo -e "\033[31m /ApplicationフォルダーにCork.appがありません。\033[0m"
 fi

else
echo -e "\033[31m Ja_Pack内でクリックして下さい。\033[0m"
fi
