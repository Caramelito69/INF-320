defmodule Main do
  def main do
    [n, a] = IO.read(:all) |> String.split() |> Enum.map(&String.to_integer/1)
    IO.puts(if rem(n, 500) <= a, do: "Yes", else: "No")
  end
end
