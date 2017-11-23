# Gohmert Graph

This contains data derived from Rep Louie Gohmert's chart that attempts to explain the connections between Uranium One and Russia.

![crazy graph](https://github.com/klucar/gohmert_graph/blob/master/data/gohmert_graph.jpg)

## The Data

I did my best to map out all the nodes and edges in the graph. That data is found in `data/raw`:

_edges.csv_ : Raw edge file, no header

_nodes.csv_ : Node names and node types (names are the text written in the node)

_shapes.csv_ : Description of shapes, relates to node types (ex. diamond, round)

## iGraph

I used `igraph` in R to plot up the data. Now you too, can create a nonsense graph like this:

![nonesense](https://github.com/klucar/gohmert_graph/blob/master/results/Rplot.png)

# Enjoy !

