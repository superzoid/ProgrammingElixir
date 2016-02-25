prefix = fn p -> ( fn y -> "#{p} #{y}" end ) end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")

two_added = Enum.map [1,2,3,4], &(&1 + 2)
IO.puts(inspect(two_added))