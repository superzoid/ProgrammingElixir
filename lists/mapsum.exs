defmodule MyList do
    def mapsum([],_func) do
      0
    end

    def mapsum(list, func) do
      mapped_list = map(list, func)
      sum(mapped_list)
    end

    def map([], _func), do: []

    def map([head|tail], func), do: [func.(head) | map(tail, func)]

    def sum([]), do: 0
    def sum([head|tail]), do: head+sum(tail)
end

IO.puts(MyList.mapsum([1,2,3], &(&1 * &1)))