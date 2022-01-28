defmodule Mates.CLI do
  def start() do
    [n1, n2] = IO.gets("Write two numbers: ") |> parse_number_input()
    operation = IO.gets("Write an operation(+, -, *, /) o q to quit: ") |> parse_operation()

    {_, result} = operation |> operate({n1, n2})

    IO.puts("Result of #{n1} #{operation |> Atom.to_string} #{n2} is: #{result} \n")
    start()
  end

  defp operate(operation, {n1, n2}) do
    case operation do
      :+ -> Mates.suma(n1, n2)
      :- -> Mates.resta(n1, n2)
      :* -> Mates.multiplicacion(n1, n2)
      :/ -> Mates.division(n1, n2)
      :q -> System.halt(0)
      _ -> {:error, "Wrong action"}
    end
  end

  defp parse_operation(str) do
    str
    |> String.trim()
    |> String.to_atom()
  end

  defp parse_number_input(str) do
    str
    |> String.trim()
    |> String.split(" ")
    |> Enum.map(&String.to_integer/1)
  end
end
