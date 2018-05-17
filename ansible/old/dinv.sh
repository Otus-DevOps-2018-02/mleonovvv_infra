#!/bin/bash

case "$1" in

--list)  cat inventory.json
    ;;
*)  echo "{}"
    ;;
esac
