defmodule Table do
   
 def generate(size, padding \\ 0, separator \\ "|") do
    margin = size
    |> Primes.prime
    |> (& &1 * &1).()
    |> to_string
    |> String.length

    size
    |> Primes.multiplication_table
    |> Enum.map(fn row ->
      Enum.map(row, fn i ->
        case i do
          0 -> " "
          n -> Integer.to_string(n)
        end
        |> String.pad_leading(margin + padding)
        |> (& "#{separator} #{&1} ").()
      end)
    end)
    |> Enum.join("#{separator}\n")
    |> Kernel.<>(separator)
  end
end
