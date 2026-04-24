defmodule Main do
  def main do
    _n = IO.read(:line)
    ans =
      IO.read(:line)
      |> String.split()
      |> Enum.map(&String.to_integer/1)
      |> Stream.iterate(fn list -> Enum.map(list, &div(&1, 2)) end)
      |> Enum.take_while(fn list -> Enum.all?(list, &(rem(&1, 2) == 0)) end)
      |> Enum.count()
    IO.puts(ans)
  end
end
