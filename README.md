# ESim: Meta-Path Guided Embedding for Similarity Search in Large-Scale Heterogeneous Information Networks

## Publications

Please cite the following paper if you are using our tool. Thanks!

*   Jingbo Shang, Meng Qu, Jialu Liu, Lance M. Kaplan, Jiawei Han, Jian Peng, "**ESim: Meta-Path Guided Embedding for Similarity Search in Large-Scale Heterogeneous Information Networks**", submitted to SIGKDD 2017, under review. [arXiv:1610.09769](https://arxiv.org/abs/1610.09769) [cs.CL]

## Install
Our codes rely on two external packages, which are the Eigen package and the GSL package.

#### Eigen
The [Eigen](http://eigen.tuxfamily.org/index.php?title=Main_Page) package is used for matrix operations. To run our codes, users need to download the Eigen package and modify the package path in the makefile.

#### GSL
The [GSL](https://www.gnu.org/software/gsl/) package is used to generate random numbers. After installing the package, users also need to modify the package path in the makefile. 

## Compile
After installing the two packages and modifying the package paths, users may go to the "code" folder and use the makefile to compile the codes.

## Data
ESim takes three files as input for training, which are the node file, link file and meta-path file.
(1) Node File
The node file contains the nodes in the training network. Each line of the file describes the name (a string) and the type (a char) of a node, which are separated by space. An example is presented below:
```
Jiawei_Han a
PathSim p
KDD v
```

(2) Link File
The link file contains the links between different nodes. Each line of the file describes the head node and the end node of a link, which are separated by space. An example is presented below:
```
Jiawei_Han PathSim
PathSim Jiawei_Han
PathSim KDD
KDD PathSim
```

(3) Meta-path File
The meta-path file contains the meta-paths used for training. Users can specify multiple meta-paths, and each line describes a meta-path and its relative weight. An example is presented below:
```
apa 0.3
apvpa 0.7
```

## Running
To run the ESim model, users may directly use the example script (run.sh) we provide. After learning node embeddings, users may use the search script (search.sh) to do similarity search.

## Contact: 
If you have any questions about the codes and data, please feel free to contact us.
```
Meng Qu, mengqu2@illinois.edu
Jingbo Shang, shang7@illinois.edu
```

