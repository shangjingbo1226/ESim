#!/bin/sh

node_file=data/node.txt
link_file=data/link.txt
path_file=data/path.txt
output_file=vec.txt

size=50 # embedding dimension
negative=5 # number of negative samples
samples=1 # number of edges (Million) for training at each iteration
iters=500 # number of iterations
threads=20 # number of threads for training

./code/esim -model 2 -alpha 0.025 -node ${node_file} -link ${link_file}  -path ${path_file} -output ${output_file} -binary 1 -size ${size} -negative ${negative} -samples ${samples} -iters ${iters} -threads ${threads}