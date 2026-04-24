defmodule Main do
  def main do
    ans = IO.read(:line) |> String.trim() |> String.replace("0", "") |> String.length()
    IO.puts(ans)
  end
end
