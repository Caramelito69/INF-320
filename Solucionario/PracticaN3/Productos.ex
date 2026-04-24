defmodule Main do
  def main do
    [a, b] = IO.read(:line) |> String.split() |> Enum.map(&String.to_integer/1)
    IO.puts(if rem(a * b, 2) == 0, do: "Even", else: "Odd")
  end
end
