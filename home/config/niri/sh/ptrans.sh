text=$(wl-paste --primary --no-newline)

if [ -z "$text" ]; then
  notify-send "pTrans" "Please, select the text before using it."
  exit 1
fi

translate() {
  clear

  echo -e "pTrans\n"
  echo -e "---\n"

  echo -e "Source text:\n"
  echo -e "$text\n"
  echo -e "---\n"
  echo -e "Translation:\n"

  trans -b :uk "$text" && echo -e "\n"

  echo -e "---\n"
  echo -e "Enter any key for close this window.\n"
  read -n 1 -s
}

export text
export -f translate

foot -T "pTrans" -e bash -c "translate"
