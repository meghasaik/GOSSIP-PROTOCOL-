defmodule Proj2 do
  def main(numNodes, topology, algorithm) do
    Registry.start_link(keys: :unique, name: :registry)

    case algorithm do
      "gossip" -> Initialize_Actors.start(numNodes, topology, :gossip, algorithm)
      "pushsum" -> Initialize_Actors.start(numNodes, topology, {:pushsum, 0, 0}, algorithm)
    end
  end
end

defmodule Initialize_Actors do
  import Topologies
  def start(numNodes, topology, message, algorithm) do
    init_actors(numNodes, topology,algorithm)
    start_time = System.system_time(:millisecond)
    Init_protocol.initiate_process(numNodes, message)
    convergence_time = System.system_time(:millisecond) - start_time
    IO.puts("Time required to achieve convergence: #{convergence_time} milliseconds")
  end

  def init_actors(numNodes, topology, algorithm) do
    numNodes = correctNumNodesForGrids(numNodes, topology)
    list_nodes = 1..numNodes
    shuffled_nodes = Enum.shuffle(list_nodes) |> Enum.with_index(1)

    case algorithm do
      "gossip" -> for i <- list_nodes do
        spawn(fn -> GossipProtocol.start_link(i, getNeighbor(list_nodes,i,numNodes, topology, shuffled_nodes)) end)
        |> Process.monitor()
      end

      "pushsum" ->
        for i <- list_nodes do
              spawn(fn -> PushsumProtocol.start_link(i, getNeighbor(list_nodes, i, numNodes, topology, shuffled_nodes)) end)
              |> Process.monitor()
      end
    end
  end

end
