# Percolation

In general, percolation describes the behavior of clusters connected in a random graph.
One may wonder whether or not taken a sample of porous material, liquid poured on one face can reach another through the holes that occupy a fraction of the volume of the material. 

From a purely mathematical point of view, taken a system of complex networks, where the sites can be bound with probability p (corresponding to the passage of liquid between neighboring sites) or closed with probability 1-p; You want to find the probability of obtaining an open path or a path that runs through the connected neighboring sites, such as to connect the ends of the lattice.
 
# Procedure

The following code generates an additional mask to avoid boundary errors and simulates the percolation process through an iterative algorithm. Its main steps are:
1. Find an open site (1 in the original matrix)
2. Check neighbouring sites 
3. Give same output value to the open sites
4. If surrounded by close site (zeros) label it as a isolated cluster 

Repeat 2-4. 
A substitute algorithm is consistently performed to attach distant cluster. The extra boundaries are removed and the final percolation pattern is obtained.

# Structure of the Project
