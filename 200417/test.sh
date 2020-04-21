forTest(){
    for var in 1 2 3 4 5; do
        echo $var
    done
}

forTest2(){
    for var in {1..5..2}; do
        echo "Welcone $var times"
    done
}
forTest2