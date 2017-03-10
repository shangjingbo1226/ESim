# ESim: Meta-Path Guided Embedding for Similarity Search in Large-Scale Heterogeneous Information Networks

## Publications

Please cite the following paper if you are using our tool. Thanks!

*   Jingbo Shang, Meng Qu, Jialu Liu, Lance M. Kaplan, Jiawei Han, Jian Peng, "**ESim: Meta-Path Guided Embedding for Similarity Search in Large-Scale Heterogeneous Information Networks**", submitted to SIGKDD 2017, under review. [arXiv:1610.09769](https://arxiv.org/abs/1610.09769) [cs.CL]

## Deployment

The implementation of ESim relies on two external packages: [Eigen](http://eigen.tuxfamily.org/index.php?title=Main_Page) and [GSL](https://www.gnu.org/software/gsl/). We use Ubuntu as an example for the deployment.

First, let's install the GSL.
```
sudo apt-get install libgsl0ldbl
```
Second, we will download Eigen and build the binaries for ESim using Makefile.
```
make
```
In the end, the binaries are in the folder bin/.

## Default Run

The default run will download a bibliographic network (dblp_data) from our data mining group server.
```
./run.sh
```

After ESim generates the embedding vectors, users may use the search script to do similarity search. The usage is similar to the similar word search in word2vec.
```
./search.sh
```

## Input Formats
ESim takes three files as input for training, which are the node file, link file and meta-path file.
#### Node File
The node file contains the nodes in the training network. Each line of the file describes the name (a string) and the type (a char) of a node, which are separated by space. An example is presented below:
```
Jiawei_Han a
PathSim p
KDD v
...
```

#### Link File
The link file contains the links between different nodes. Each line of the file describes the head node and the end node of a link, which are separated by space. An example is presented below:
```
Jiawei_Han PathSim
PathSim Jiawei_Han
PathSim KDD
KDD PathSim
...
```

#### Meta-path File
The meta-path file contains the meta-paths used for training. Users can specify multiple meta-paths, and each line describes a meta-path and its relative weight. An example is presented below:
```
apa 0.3
apvpa 0.7
...
```

## Example Output
Below is the example output on the DBLP dataset with the query as "Jiawei Han" and the meta-path as "apvpa".
```
------------------------------------
Xifeng_Yan		0.931779
Ramin_Afshar	0.930142
Zhenhui_Li		0.930056
Tianyi_Wu		0.923093
Cindy_Xide_Lin	0.923068
Yiwen_Yin		0.919200
Xiaolei_Li		0.918408
Petre_Tzvetkov	0.917137
Chinying_Chaou	0.915410
Yizhou_Sun		0.914187
```

## Contact: 
If you have any questions about the codes and data, please feel free to contact us.
```
Jingbo Shang, shang7@illinois.edu
Meng Qu, mengqu2@illinois.edu
```

