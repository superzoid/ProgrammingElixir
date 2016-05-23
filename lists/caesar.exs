defmodule MyList do
  def caesar([], _n), do: []

  def caesar(list, 0), do: list

  def caesar([head | tail], n) when [head + n] > 'z' do
      [head + n - 26 | caesar(tail, n)]
    end

    def caesar([head | tail], n) do
      [head + n | caesar(tail, n)]
    end
end

IO.puts('results:')
IO.puts(MyList.caesar([],2))
IO.puts(MyList.caesar('abc',0))
IO.puts(MyList.caesar('abc',1))
IO.puts(MyList.caesar('ryvkve',13))