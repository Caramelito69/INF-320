defmodule Main do
  def main do
    [_n | cards] = IO.read(:all) |> String.split() |> Enum.map(&String.to_integer/1)
    {alice_score, bob_score} =
      cards
      |> Enum.sort(:desc)
      |> Enum.chunk_every(2, 2, [0])
      |> Enum.reduce({0, 0}, fn [alice_card, bob_card], {acc_a, acc_b} ->
        {acc_a + alice_card, acc_b + bob_card}
      end)

    IO.puts(alice_score - bob_score)
  end
end
