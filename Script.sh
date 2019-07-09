# A simple wallpaper retreiver

# Secret
API_KEY=12947236-10bedb42dfb9be1de81626120

URL=https://pixabay.com/api/

API_CALL="$URL?key=$API_KEY&q=nature+wallpaper&min_width=2880&min_height=1800&order=latest&per_page=3&editors_choice=true"

# https://pixabay.com/api/?key=12947236-10bedb42dfb9be1de81626120&q=yellow+flowers&image_type=photo

rawResponse=$(curl -s $API_CALL)

url=$(echo $rawResponse | jq .hits[0].largeImageURL)
#Remove first and last " from URL
url="${url%\"}"
url="${url#\"}"

#Download URL
curl ${url} > image.png

cmd="tell application \"Finder\" to set desktop picture to \"/Users/Pranav/Documents/Code/WallPaperScript/image.png\" as POSIX file"
osascript -e "$cmd"

# TODO:

# 5. change wallpaper using:
# osascript -e ‘tell application “Finder” to set desktop picture to POSIX file “link/to/download.jpg”’
# okay be careful because trying 5. almost forced me to restart my OS
#6. in the far far future, take image type as user input and load images based on that 
