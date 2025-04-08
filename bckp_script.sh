#!/bin/bash


<<readme

Usage:
 ./script.sh <path to your source> <path to your backup directory>

readme

function display_usage() {
  echo "Usage: ./script.sh <path to your source> <path to your backup directory>"
}

if [[ $# -le 1 ]]; then
        display_usage
fi

source_dir=$1
backup_dir=$2
timestamps=$(date '+%Y-%m-%d-%H:%M:%S')

function create_backup {
        zip -r "${backup_dir}/backup_${timestamps}.zip" ${source_dir} > /dev/null

        if [ $? -eq 0 ]; then
                echo "Backup Generated Successfully for ${timestamps}"
        fi
}


function perform_rotation {
        backups=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null))

        if [ "${#backups[@]}" -gt 5 ]; then
                echo "Performing rotation for 5 days"

                backup_to_remove=("${backups[@]:5}")

                for junk in "${backup_to_remove[@]}"
                do
                        rm -f ${junk}
                done
        fi
}

create_backup
perform_rotation
