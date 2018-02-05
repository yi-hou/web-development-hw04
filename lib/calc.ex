
defmodule Calc do
  @moduledoc """
  """

  @doc """
  """

  def eval(input) do
    input |> String.replace("(", "( ")
          |> String.replace(")", " )")
          |> String.split()
          |> parse()
          |> calculate()
  end



  def parse(input) do
    Enum.reduce(input, [], fn(x, acc) ->
      if x == "(" or x == "+" or x == "-" or x == "*" or x == "/" or x == ")" do
        acc ++ [x]
      else
        acc ++ [String.to_integer(x)]
      end
    end)
  end


  def calculate(l) do
   cond do
     Enum.count(l) == 1 ->
       Enum.at(l, 0)
     Enum.at(l, 1) == "+" ->
       Enum.at(l, 0) + Enum.at(l, 2)
     Enum.at(l, 1) == "-" ->
       Enum.at(l, 0) - Enum.at(l, 2)
     Enum.at(l, 1) == "*" ->
       Enum.at(l, 0) * Enum.at(l, 2)
     Enum.at(l, 1) == "/" ->
       div(Enum.at(l, 0), Enum.at(l,2))
    end
  end


 

   def main() do
    case IO.gets("> ") do
        {:error, reason} ->
        IO.puts "Error: #{reason}"
        input ->
        IO.puts(eval(input))
        main()
    end
  end

 
end