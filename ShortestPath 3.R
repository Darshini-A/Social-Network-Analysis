install.packages('igraph')
library('igraph')

matt = as.matrix(read.table(text = "
node R S T U 
R    7 5 0 0
S    7 0 0 2
T    0 6 0 0
U    4 0 1 0", header = T))
matt = matt[,-1]
matt

g = graph.adjacency(matt, weighted = TRUE)
plot(g, edge.label = E(g)$weight)
s.path = shortest.paths(g, algorithm = "dijkstra")

shortest.paths(g, v="S", to="U")
shortest.paths(g, v="R", to="U")
shortest.paths(g, v="R", to="S")
graph.density(g, loops = TRUE)