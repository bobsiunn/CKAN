#!/bin/bash
PATH="../result/"
pwd

# #nru 1
# for i in {1..10}
# do
#     echo "nru 1 layer 1"
#     sync; echo 3 | sudo tee /proc/sys/vm/drop_caches >/dev/null
#     sleep 5
#     python main.py --dataset movie --user_triple_set_size 64 --n_layer 1 --nru 1 | grep begin >> $PATHnru1_nlayer1.txt
# done

# for i in {1..10}
# do
#     echo "nru 1 layer 3"
#     sync; echo 3 | sudo tee /proc/sys/vm/drop_caches >/dev/null
#     sleep 5
#     python main.py --dataset movie --user_triple_set_size 64 --nru 1 | grep begin >> ${PATH}nru1_nlayer3.txt
# done

# for i in {1..10}
# do
#     echo "nru 5 layer 1"
#     sync; echo 3 | sudo tee /proc/sys/vm/drop_caches >/dev/null
#     sleep 5
#     python main.py --dataset movie --user_triple_set_size 64 --n_layer 1 --nru 5 | grep begin >> ${PATH}nru5_nlayer1.txt
# done

# for i in {1..10}
# do
#     echo "nru 5 layer 3"
#     sync; echo 3 | sudo tee /proc/sys/vm/drop_caches >/dev/null
#     sleep 5
#     python main.py --dataset movie --user_triple_set_size 64 --nru 5 | grep begin >> ${PATH}nru5_nlayer3.txt
# done

for i in {1..10}
do
    echo "nru 10 layer 1"
    sync; echo 3 | sudo tee /proc/sys/vm/drop_caches >/dev/null
    sleep 5
    python main.py --dataset movie --user_triple_set_size 64 --n_layer 1 --nru 10 | grep begin >> ${PATH}nru10_nlayer1.txt
done

for i in {1..10}
do
    echo "nru 10 layer 3"
    sync; echo 3 | sudo tee /proc/sys/vm/drop_caches >/dev/null
    sleep 5
    python main.py --dataset movie --user_triple_set_size 64 --nru 10 | grep begin >> ${PATH}nru10_nlayer3.txt
done 