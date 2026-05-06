declare -A config=(
	["Zen Browser"]="zen"
	["Chromium"]="chromium"
	["Epiphany"]="epiphany"
)

key=$(printf "%s\n" "${!config[@]}" | fuzzel -d)

if [[ -n "${config[$key]}" ]]; then
	${config[$key]} &
fi
