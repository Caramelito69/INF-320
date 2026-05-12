defmodule Main do
  def main do
    [_ | s] = IO.read(:all) |> String.split()

    s
    |> MapSet.new()
    |> MapSet.size()
    |> IO.puts()
  end
end
