defmodule Primes do
 
  def prime?(n) when n <= 1, do: false
  def prime?(2), do: true
  def prime?(n) do
    (n |> :math.sqrt |> round)..2
    |> Enum.any?(&rem(n, &1) == 0)
    |> Kernel.!
  end

 
  @spec first(pos_integer()) :: list
  def first(0), do: []
  def first(n) when n > 0 do
    2
    |> Stream.iterate(increment())
    |> Stream.filter(&prime?(&1))
    |> Stream.take(n)
  end

  defp increment, do: &(&1 + 1)

  def prime(n) when n <= 0, do: raise ArgumentError, message: "required a positive integer"
  def prime(n) do
    first(n) |> Enum.at(-1)
  end

  def multiplication_table(0), do: []
  def multiplication_table(n) when n > 0 do
    primes = first(n)

    matrix = Stream.map(primes, fn i ->
      [ i | Enum.map(primes, fn j -> i * j end) ]
    end)

    [ [ 0 | Enum.to_list(primes) ] | Enum.to_list(matrix) ]
  end
end
