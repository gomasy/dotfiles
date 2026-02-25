#!/bin/bash

new=0
for old in `tmux ls | grep -E '^[0-9]*:' | cut -f1 -d':' | sort`
do
    tmux rename -t $old $new
    ((new++))
done

exit 0
