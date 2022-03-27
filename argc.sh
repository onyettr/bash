#!/bin/bash
# Sample bash scripts - argc/argv 

echo "starting.."
echo "argc = $#" 

usage() {
  echo "release builder script:
  echo ""
  echo "DEBUUG      Enabled DEBUG=ON"
  echo "RELEASE     Disable RELEASE_BUILD=OFF"
}

while [ -n "$1" ]
do
   case "$1" in
      DEBUG)   echo "Debug Option seen" ;;
      RELEASE) echo "Release Build enabled" ;;
      HELP) usage()
    *) echo "$1 is not an option" ;;
    esac
    shift 
done
