#!/bin/bash

node_file="dblp_data/node.dat"
link_file="dblp_data/link.dat"
path_file="dblp_data/path.dat"
output_file="results/vec.dat"

if [ ${node_file} == "dblp_data/node.dat" ] && [ ! -e dblp_data/node.dat ]; then
    echo ${green}===Downloading DBLP Dataset===${reset}
    curl http://dmserv2.cs.illinois.edu/data/data_dblp.tar.gz --output data_dblp.tar.gz
    tar -xvf data_dblp.tar.gz
fi

make
mkdir -p results

size=50 # embedding dimension
negative=5 # number of negative samples
samples=1 # number of edges (Million) for training at each iteration
iters=500 # number of iterations
threads=20 # number of threads for training

./bin/esim -model 2 -alpha 0.025 -node ${node_file} -link ${link_file}  -path ${path_file} -output ${output_file} -binary 1 -size ${size} -negative ${negative} -samples ${samples} -iters ${iters} -threads ${threads}