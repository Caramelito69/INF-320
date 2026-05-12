defmodule Main do
  def main do
    n = IO.read(:all) |> String.trim() |> String.to_integer()

    if rem(n, n |> Integer.digits() |> Enum.sum()) == 0 do
      IO.puts("Yes")
    else
      IO.puts("No")
    end
  end
end
