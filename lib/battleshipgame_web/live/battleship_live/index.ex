defmodule BattleshipgameWeb.BattleshipLive.Index do
use BattleshipgameWeb, :live_view

   @grid_size  10


  def mount(_params, _session, socket) do
    # Initialize the LiveView with a new game (e.g., initial board, score, etc.)
    # mount was successful
    {:ok, assign(socket,   new_game_state())}
  end

  # Returns a list of coordinate tuples representing ship positions on the game board.
  defp create_ships do
    # 3 ships with lengths 3, 4, 2
    [
      {3, 2}, {3, 3}, {3, 4},       # Ship 1 (horizontal, size 3)
      {4, 7}, {5, 7}, {6, 7}, {7, 7}, # Ship 2 (vertical, size 4)
      {8, 2}, {8, 3}              # Ship 3 (horizontal, size 2)
    ]
  end

  def handle_event("guess", %{"row" => row, "col" => col}, socket) do
    # Handle a user's guess at the specified row and column.
    # Convert string inputs to integers
    row = String.to_integer(row)
    col = String.to_integer(col)
    # set row and column in to cord tupple
    coord = {row, col}

    # If already won or already guessed, do nothing
    if socket.assigns.won or
    # check in hits contains cord or not - boolean
      MapSet.member?(socket.assigns.hits, coord) or
      MapSet.member?(socket.assigns.misses, coord) do
      {:noreply, socket}
    else
      if coord in socket.assigns.ships do
        hits = MapSet.put(socket.assigns.hits, coord)
        won = MapSet.size(hits) == length(socket.assigns.ships)
        # We return :noreply because we’re not pushing a response to the client,
        # just updating the state to trigger a re-render.
        {:noreply, assign(socket, hits: hits, won: won)}
      else
        misses = MapSet.put(socket.assigns.misses, coord)
        {:noreply, assign(socket, misses: misses)}
      end
    end
  end

  # Initializes and returns a new game state map.
  # Creates a new, empty MapSet.
  #
  # A MapSet is a set data structure that stores unique elements with efficient lookup.
  # `MapSet.new()` initializes an empty set that can be used to track unique values,
  # such as coordinates of hits or misses in a game.
  defp new_game_state do
    fixedships = create_ships()
    %{
    grid_size: @grid_size,
    ships: fixedships,
    hits: MapSet.new(),
    misses: MapSet.new(),
    won: false
    }
  end

  defp total_ship_cells(ships), do: length(ships)

  defp cell_class(cord, hits, misses) do
    # Determines the CSS class for a cell in a game grid based on its coordinates.
    #
    # Parameters:
    # - cord: a tuple representing the cell's coordinates, e.g., {x, y}
    # - hits: a MapSet or list containing coordinates that have been hit
    # - misses: a MapSet or list containing coordinates that have been missed
    cond do
      MapSet.member?(hits, cord) -> "border-2 bg-green-200 flex cursor-pointer"
      MapSet.member?(misses, cord) -> "border-2 bg-red-200 flex cursor-pointer"
      true -> "border-2 bg-blue-200 hover:bg-blue-300 cursor-pointer"
    end
end

defp cell_value(cord, hits, misses) do
# Determines the display value for a cell in a game grid based on its coordinates.
#
# Parameters:
# - cord: a tuple representing the cell's coordinates, e.g., {x, y}
# - hits: a MapSet or list containing coordinates that have been hit
# - misses: a MapSet or list containing coordinates that have been missed
  cond do
    MapSet.member?(hits, cord) -> "S"
    MapSet.member?(misses, cord) -> "X"
    true -> ""
  end
end

end
