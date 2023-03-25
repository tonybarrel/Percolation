# Percolation

In general, percolation describes the behavior of clusters connected in a random graph.
One may wonder whether or not taken a sample of porous material, liquid poured on one face can reach another through the holes that occupy a fraction of the volume of the material. 

From a computational point of view, it is the study of random systems and networks, particularly in the fields of statistical physics and computer science. In this context, percolation refers to the behavior of a network or lattice when it is randomly filled with particles or edges. The sites here can be bound with probability p (corresponding to the passage of liquid between neighboring sites) or closed with probability 1-p. 

The aim is to find the probability of obtaining an open path or a path that runs through the connected neighboring sites, such as to connect the ends of the lattice. The percolation threshold, in fact, is the critical probability at which a spanning cluster, or a cluster that spans the entire system, first appears. This critical point separates two distinct phases of the system: below the threshold, the system is composed of finite clusters, while above the threshold, a giant cluster emerges that percolates the entire system.
 
# Procedure

The following code generates an additional mask to avoid boundary errors and simulates the percolation process through an iterative algorithm. Its main steps are:
1. Find an open site (1 in the original matrix)
2. Check neighbouring sites 
3. Give same output value to the open sites
4. If surrounded by close site (zeros) label it as a isolated cluster 

Repeat 2-4. 
A substitute algorithm is consistently performed to attach distant cluster. The extra boundaries are removed and the final percolation pattern is obtained.

# Structure of the Project

These are the steps in order to start the program and to plot the results:
1. First, the user has to choose between the different lattice configurations (in our case there is only one, [config](https://github.com/tonybarrel/Percolation/blob/main/config.m) and eventually overwrite a new one, using the syntax of config); if the user wants to do so, he has to specify the lattice parameters (N, M, the p interval, the s rng value, the ip interval for the imaging function). Then, the user has to launch the config.m to save the parameters in the Workspace.
2. To start the percolation algorithm, the user has to launch the file [simulation](https://github.com/tonybarrel/Percolation/blob/main/simulation.m) which imports its parameters from [config](https://github.com/tonybarrel/Percolation/blob/main/config.m).
3. The [plots](https://github.com/tonybarrel/Percolation/tree/main/plots) returns also two graphs: the probability of percolation with the critical percolation probability and the image of the lattice for different probabilities. If the user wants to modify those, he can change the 'ip' and 'lenip' values in the [config](https://github.com/tonybarrel/Percolation/blob/main/config.m).

I divided my project into folders:

- In the [percolating](https://github.com/tonybarrel/Percolation/tree/main/percolating) folder, I have built all the necessary function to perform the project for a given probability. The [regroup](https://github.com/tonybarrel/Percolation/blob/main/percolating/regroup.m), [counter_process](https://github.com/tonybarrel/Percolation/blob/main/percolating/counter_process.m), [smaller_neighbours](https://github.com/tonybarrel/Percolation/blob/main/percolating/smaller_neighbours.m), [bigger_neighbours](https://github.com/tonybarrel/Percolation/blob/main/percolating/bigger_neighbours.m) and [initial_mask](https://github.com/tonybarrel/Percolation/blob/main/percolating/initial_mask.m) ones are exclusively for the percolation build-up, while the [substitute](https://github.com/tonybarrel/Percolation/blob/main/percolating/substitue.m) is an iterative function, constantly performed to attach distant clusters and the [results](https://github.com/tonybarrel/Percolation/blob/main/percolating/results.m) states if a matrix has reached percolation.

- In the [config](https://github.com/tonybarrel/Percolation/blob/main/config.m) file, there are all the definitions of the parameters used in the simulation file, as the dimensions of the lattice (N*M), the probability interval, the rng seed and the imaging probability interval.

- In the [testing](https://github.com/tonybarrel/Percolation/tree/main/testing) folder, I have tested all the Percolating functions and the simulation.

- In the [simulation](https://github.com/tonybarrel/Percolation/blob/main/simulation.m) file, all the percolating function are called and performed for the all probabilities. An extra focus is put in the 0.55-0.65 interval, where the percolation probability is situated. A phase transition is showed in the graph from a non-percolating to a percolating system. 

- In the [plots](https://github.com/tonybarrel/Percolation/tree/main/plots) folder, there are the two functions that respectively plot the percolation probability and the image of the lattice for a given set of probabilities and saves them in the [images](https://github.com/tonybarrel/Percolation/tree/main/plots/images) folder.

To show some results:

1. This is the plot of the percolation probability for a default seed. The critical probability is obtained at p=0.6575:

![config](https://github.com/tonybarrel/Percolation/blob/main/plots/images/prob_percol.png)

2. This is the image of the lattice for different probabilities. The spanning cluster can be seen from a 0.66 probability for the default seed.
 
![config](https://github.com/tonybarrel/Percolation/blob/main/plots/images/imaging.png)
