defmodule Mates do

  alias Mates.Private

  def suma(x, y) when is_number(x) and is_number(y), do: Private.operar({:suma, x, y})
  def suma(_x, _y), do: Private.not_number()

  def resta(x, y) when is_number(x) and is_number(y), do: Private.operar({:resta, x, y})
  def resta(_x, _y), do: Private.not_number()

  def multiplicacion(x, y) when is_number(x) and is_number(y), do: Private.operar({:multiplicacion, x, y})
  def multiplicacion(_x, _y), do: Private.not_number()

  def division(_x, 0), do: {:error, "Cannot divide by zero"}
  def division(x, y) when is_number(x) and is_number(y), do: Private.operar({:division, x, y})
  def division(_x, _y), do: Private.not_number()
end
