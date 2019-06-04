#!/usr/bin/env python

from distlib.database import DistributionPath
dist_path = DistributionPath()
mylist = list(dist_path.get_distributions())
from distlib.database import make_graph
print(make_graph(mylist))
