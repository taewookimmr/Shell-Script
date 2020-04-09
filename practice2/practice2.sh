#!/bin/zsh


# ## 디렉토리 존재 유무 확인
# if [ ! -d make ]; then
#     mkdir make
# fi

# ## 파일 존재 유무 확인
# if [ ! -e google.com ]; then
#     touch google.com
# fi
recursive(){
    searchdir=${HOME}
    for entry in $searchdir/*
        do 
            if [ -f $entry ]
                then   
                    echo file : $entry
            else
                echo "good"
            fi
        done
}
