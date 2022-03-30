#!/bin/bash
# Sample bash scripts - argc/argv handling 

# bash debugging
# -v verbose mode prints piut everything
# -x  
# set -x

echo "$0 starting.."
echo "argc = $#" 

VERSION_STRING="0.1.0"

VERSBOSE_MODE=0
QUIET_MODE=0
INFO_LEVEL=0

# help screen 
usage() {
  echo "$0: example cli bash script [-h|i|f|v|V]"
  echo "options:"
  echo "i          Info level [0|1|2]]"
  echo "h          Help screen        "
  echo "f          <file name>        "
  echo "q          quiet mode         "
  echo "v          enable verbose mode"
  echo "V          Version            "
}

# command line processing
while [[ $# -gt 0 ]]
do
  case "$1" in
    -h|--help) 
      usage
      exit 0;;
    -q|--quiet)
      QUIET_MODE=1
      ;;
    -i|--info)
      INFO_LEVEL="$2"
      shift;; 
    -f|--filename)
      FILENAME="$2"
      shift;;
    -v|--verbose)
      VERSBOSE_MODE=1
      ;;
    -V|--version)
      echo $VERSION_STRING
      exit 0;;
     *) 
      echo "[ERROR] $1 is not a valid option" 
      exit 1;;
  esac
  shift   
done

echo "Verbose Mode       $VERSBOSE_MODE"
echo "Quiet Mode         $QUIET_MODE   "
echo "Information level  $INFO_LEVEL   "
echo "Filename           $FILENAME     "