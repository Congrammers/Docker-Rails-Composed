#! /bin/bash
if [ $# -eq 0 ]; then
    echo  "This script need atleast one argument to run, preferably: ['bash', 'pry-remote']"
else

    str="${@}"
    echo "argument is $str"
    git_root=$(git rev-parse --show-toplevel)

    docker-compose -f $git_root/docker-compose.yml exec yourappname_web $str
fi
