function handle {
  if [[ ${1:0:10} == "openwindow" ]] then
    sleep 0.1
    ./bit.sh
    echo "hi there buddy"
  fi
}

socat -U - UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock | while read -r line; do handle "$line"; done
