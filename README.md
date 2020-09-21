# GOSSIP-PROTOCOL-
The gossip protocol has been implemented for group communication and aggregate computation. Here through a simulator, convergence of the algorithms is determined. The algorithms used here are GOSSIP ALGORITHM and PUSH-SUM PROTOCOL. Along with the algorithms, topology also plays a crucial role and the topologies used here are: 1) FULL NETWORK 2) LINE 3)3-D TORUS 4) HONEYCOMB 5) HONEYCOMB WITH RANDOM NEIGHBOURS 6)RANDOM 2-D GRID.
## PROJECT REPORT
The implementation has been done in both Gossip as well as Push-sum algorithms, which covers the following topologies: Line, Fully Connected, Random-2D, 3D Torus, Honeycomb and Random Honeycomb. Below are the findings:
#TABLE:
                                                          GOSSIP (Time in milliseconds)












#TABLE:
                                                                #PUSH-SUM (Time in milliseconds)
                                                  
                                                  
                                               Inputs	    LINE	  FULL	Rand2D	3DTorus	  Honeycomb	  RandomHoneycomb
                                                 50	      2234	  610	   881	    703	        875	         1047
                                                100	      3687	  1094	 1110	    672	       4110	         1546
                                                500	      2937	  2097	  937	   2094	       8000	         2921
                                                1000	    3690	  6562	 1406	   3297	      11313	         2728
                                                2500			 -       -     1578	   5375	      14297	         4438
                                                5000			 -       -     2015	  15422	      15578	         4953


#NORMAL SCALE-
 





 


#LOGARITHMIC SCALE-

 




 


#OBSERVATIONS-
•	All the topologies implemented in this project, work well.
•	The least-time consuming algorithm for push-sum turns out to be random2D grid. It converges faster than others for higher number of nodes. The highest number of nodes that converged without any failure were: 5000.
•	The random honeycomb algorithm used in this project has four nodes instead of three where three nodes are adjacent, and one node is a random one. Because of randomization, this topology works quite better than the other topologies used. It works better than the fully connected topology when higher number of nodes are taken for both gossip and push-sum algorithm.
•	For the push-sum algorithm, the fully connected topology does not work beyond 2500 nodes when given. The maximum number of nodes that were working was 1200 nodes. 
•	The most-time consuming algorithm for both gossip as well as the push-sum was the line topology. It was the slowest in convergence when compared with other topologies. The reason was in the process of its implementation.
•	For the push-sum algorithm, the line topology when compared to other topologies performed badly, as the convergence failure occurred from the 800th node itself. Thus, it could provide convergence for 800 nodes.
•	In gossip algorithm, when taking higher number of nodes, the fully connected topology performs the worst and provides the highest convergence time when compared to the other topologies.

