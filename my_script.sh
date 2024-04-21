#!/bin/bash

case "$1" in
    --date)
        date
        ;;
    --logs)
        if [ -z "$2" ]; then
            for i in {1..100}; do
                echo "log$i.txt created by my_script.sh on $(date)" > "log$i.txt"
            done
        else
            for ((i=1; i<=$2; i++)); do
                echo "log$i.txt created by my_script.sh on $(date)" > "log$i.txt"
            done
        fi
        ;;
    --help)
        echo "Usage: my_script.sh [OPTION]"
        echo "--date       Display today's date"
        echo "--logs       Create 100 log files"
        echo "--logs N     Create N log files"
        echo "--help       Display this help message"
        ;;
    *)
        echo "Invalid option. Use --help for usage instructions."
        exit 1
        ;;
esac

