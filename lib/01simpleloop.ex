defmodule Loop do
 
    def loopto(statement, limit) do
      countup(1,limit,statement)
    end
    
    defp countup(count, limit, statement) when count <= limit do
      IO.puts(statement)
      countup(count+1,limit,statement)
    end
    
    # Must do something in patttern matching when the 'loop' completes
    defp countup(_count, _limit, _statement) do
      IO.puts("finished!")
    end
      
  end