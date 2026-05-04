defmodule Main do
  def main do
    [n, a, b] = IO.read(:line) |> String.split() |> Enum.map(&String.to_integer/1)
    ans =
      1..n
      |> Enum.filter(fn x ->
        sum_of_digits = Integer.digits(x) |> Enum.sum()
        sum_of_digits >= a and sum_of_digits <= b
      end)
      |> Enum.sum()

    IO.puts(ans)
  end
end
