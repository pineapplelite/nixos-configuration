declare -A config=(
	["Zen Browser"]="zen"
	["Chromium"]="chromium"
)

key=$(printf "%s\n" "${!config[@]}" | fuzzel -d -p "Select Browser" -i)

if [[ -n "${config[$key]}" ]]; then
	${config[$key]} &
fi
