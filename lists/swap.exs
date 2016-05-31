defmodule Swapper do
	def swap([]), do: []
	def swap([a,b|tail]), do: [b,a|swap(tail)]
	def swap([_]), do: raise "No odd numbered lists please!!"
end

IO.puts inspect Swapper.swap [1,2,3,4,5,6]
IO.puts inspect Swapper.swap [1,2,3,4,5]