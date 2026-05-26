defmodule Main do
    def main do
        [n,_|b]=IO.read(:all)|>String.split()|>Enum.map(&String.to_integer/1)
        s=MapSet.new(b)
        {r,_}=Enum.reduce(1..n,{1,0},fn i,{p1,p2}->if(MapSet.member?(s,i),do: {0,p1},else: {rem(p1+p2,1000000007),p1}) end)
        IO.puts(r)
    end
end
