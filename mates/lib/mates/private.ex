defmodule Mates.Private do
  def operar({:suma, x, y}), do: {:ok, x + y}
  def operar({:resta, x, y}), do: {:ok, x - y}
  def operar({:multiplicacion, x, y}), do: {:ok, x * y}
  def operar({:division, x, y}), do: {:ok, x / y}
  def operar({_, _, _}), do: {:error, "Error! Try again later"}

  def not_number, do: {:error, "First or second argument is not a number"}
end
