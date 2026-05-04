defmodule Main do
  def main do
    [_n | diameters] = IO.read(:all) |> String.split() |> Enum.map(&String.to_integer/1)
    ans =
      diameters
      |> Enum.uniq()
      |> Enum.count()
    IO.puts(ans)
  end
end
