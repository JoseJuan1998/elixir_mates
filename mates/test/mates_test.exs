defmodule MatesTest do
  use ExUnit.Case
  doctest Mates

  test "Suma" do
    {:ok, resultado} = Mates.suma(1,2)
    assert is_number(resultado)
  end

  test "Resta" do
    {:ok, resultado} = Mates.resta(1,2)
    assert is_number(resultado)
  end

  test "Multiplicacion" do
    {:ok, resultado} = Mates.multiplicacion(1,2)
    assert is_number(resultado)
  end

  test "Division" do
    {:ok, resultado} = Mates.division(1,2)
    assert is_number(resultado)
  end
end
