# A simple wallpaper retreiver

# Secret
API_KEY=12947236-10bedb42dfb9be1de81626120

URL=https://pixabay.com/api/

API_CALL="$URL?key=$API_KEY+&q=nature+wallpaper&min_width=2880&min_height=1800&order=latest&per_page=3&editors_choice=true"

echo $API_CALL

# https://pixabay.com/api/?key=12947236-10bedb42dfb9be1de81626120&q=yellow+flowers&image_type=photo