library(igraph)
library(tidyverse)

# Read the data
data_dir <- "./data/raw"
edge_file <- paste(data_dir, "edges.csv", sep='/')
node_file <- paste(data_dir, "nodes.csv", sep='/')
shape_file <- paste(data_dir, "shapes.csv", sep='/')

edges <- read_csv(edge_file, col_names = FALSE)
nodes <- read_csv(node_file)
shapes <- read_csv(shape_file)

# Form the graph
g <- graph_from_edgelist(as.matrix(edges), directed = FALSE)
# Add Attributes
g <- set_vertex_attr(g, "Label", nodes$Number, nodes$Label)
g <- set_vertex_attr(g, "Type", nodes$Number, nodes$Type)
g <- set_vertex_attr(g, "Shape", nodes$Number, shapes$shape[V(g)$Type])

# Calculate some graphy things
deg <- degree(g, mode="all")
as <- authority_score(g)$vector

# Plot it
plot(g, layout = layout.gem,
     vertex.label=V(g)$Label,
     vertex.label.font=3,
     vertex.label.cex=.8,
     vertex.shape=V(g)$Shape,
     vertex.size=deg*1.5,
     edge.color="gray70",
     edge.width=2)
