defmodule MyList do
  def max([]), do: 0
  def max([head|tail]), do: _max(tail, head, 0)
  defp _max([], current, old)  when current > old,  do: current
  defp _max([], current, old)  when old > current,  do: old
  defp _max([head|tail], current, old) when current > old, do: _max(tail, head, current)
  defp _max([head|tail], current, old)  when old > current, do: _max(tail, head, old)
end

IO.puts(MyList.max([1,5,3,2]))