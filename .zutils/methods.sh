function mkcd() {
  mkdir $1 && cd $1
}

function rmf() {
  rm -rf $1
}

function ino() {
  arduino-cli $@
}

function mamp() {
  if [ "$1" = "logs" ]; then
    if [ "$2" = "php" ]; then
      logtype="php"
    elif [ "$2" = "access" ]; then
      logtype="access"
    else
      vared -p "Specify log type [php/access]: " -c logtype
    fi

    if [ "$logtype" = "php" ]; then
      open /Applications/MAMP/logs/php_error.log
    elif [ "$logtype" = "access" ]; then
      open /Applications/MAMP/logs/php_error.log
    else
      echo "Unknown log type"
    fi
  elif [ "$1" = "info" ]; then
    echo "Only supports php and access logs by now"
  else
    echo "Type 'mamp info' for more information"
  fi
}