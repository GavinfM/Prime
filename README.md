# Prime
# Prime Multiplication table
An application that is written in Elixir that will take a numeric input (N) from a user and outputs a multiplication table of (N) prime numbers.

# How to run it 

To run it Elixir, Erlang/OTP 19 is needed.

The defmodules Primes and Tables are needed to be added into the console.

At this point you should be able to use some of the functions.

## Examples 

iex> Table.generate(4) |> IO.puts

iex> Primes.first(3 |> Enum.to_list

iex> Primes.prime(200)

# What i'm pleased with
I'm pleased with the fact that the solution feels straight forward and runs well with smaller prime tables.


# What would i do if i had more time
Attempt to rework this solution so that it would operate more efficiently and faster, this could involve implementing a sieve algorithm.

I would also spend more time learning about elixir itself due to the fact i needed to research abit on how it operated.