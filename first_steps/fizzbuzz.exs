fizz_buzz = fn
   0,0,_ -> "FizzBuzz"
   0,_,_ -> "Fizz"
   _,0,_ -> "Buzz"
   _,_,a -> a
end

execute = fn (i) -> fizz_buzz.(rem(i,3),rem(i,5), i) end

IO.puts "#{execute.(10)}"
IO.puts "#{execute.(11)}"
IO.puts "#{execute.(12)}"
IO.puts "#{execute.(13)}"
IO.puts "#{execute.(14)}"
IO.puts "#{execute.(15)}"
IO.puts "#{execute.(16)}"
IO.puts "#{execute.(17)}"
IO.puts "#{execute.(18)}"