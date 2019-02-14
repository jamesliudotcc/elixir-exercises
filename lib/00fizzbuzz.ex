defmodule Fizzbuzz do

  def fizzbuzz(limit) do
    countup(1,limit)
  end
  
  defp countup(count, limit) when count <= limit do
    print_number(count, rem(count, 5) == 0, rem(count, 3) == 0)
    countup(count+1,limit)
  end

  defp countup(_count, _limit) do
    IO.puts("finished!")
  end

  defp print_number(_to_print, fives, threes) when fives and threes do
    IO.puts('fizzbuzz')
  end

  defp print_number(_to_print, _fives, threes) when threes do
    IO.puts('fizz')
  end

  defp print_number(_to_print, fives, _threes) when fives do
    IO.puts('buzz')
  end
    
  defp print_number(to_print, _threes, _fives) do
    IO.puts(to_print)
  end

end