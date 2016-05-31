defmodule MyList do
	def span(from, to) do 
		_span(from, to, [])
	end
	defp _span(from, to, acc) when from-to == 0 do 
		IO.puts from+to
		acc
	end
	defp _span(from, to, acc) when from-to != 0 do 
		IO.puts from-to
		[from+1 | _span(from+1,to, acc)]
	end
end

IO.puts(inspect MyList.span(1,10))