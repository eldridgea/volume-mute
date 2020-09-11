response=$(osascript -e 'tell application "Finder"' -e 'activate' -e 'display dialog "It is after work hours, should I mute system sound?" buttons {"No", "Yes"} giving up after 30'  -e 'end tell')
if [[ $response =~ "returned:Yes" ]]
then
  osascript -e "set Volume 0"
elif [[ $response =~ "gave up:true" ]]
then 
  osascript -e "set Volume 0"
fi
