defmodule Main do
  def main do
    [a, b, c, x] = IO.read(:all) |> String.split() |> Enum.map(&String.to_integer/1)
    ways = for i <- 0..a, j <- 0..b, k <- 0..c, i * 500 + j * 100 + k * 50 == x, do: 1
    IO.puts(length(ways))
  end
end
