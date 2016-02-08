defmodule Morph.Snake do

  @moduledoc false
  
  def to_snake(input) when is_atom(input) do
    to_snake Atom.to_string(input)
  end

  def to_snake(input) when is_list(input) do
    for item <- input, do: to_snake(item)
  end

  def to_snake(input) when is_bitstring(input) do
    input
    |> String.replace(~r/([A-Z\d])([A-Z][a-z\d])/, "\\1_\\2")
    |> String.replace(~r/([a-z\d])([A-Z])/, "\\1_\\2")
    |> String.replace(~r/[-. ]/, "_")
    |> String.downcase
  end

  def to_snake(input) do
    input
  end

  def to_snake_caps(input) when is_atom(input) do
    to_snake_caps Atom.to_string(input)
  end

  def to_snake_caps(input) when is_list(input) do
    for item <- input, do: to_snake_caps(item)
  end

  def to_snake_caps(input) when is_bitstring(input) do
    input
    |> to_snake
    |> String.upcase
  end

  def to_snake_caps(input) do
    input
  end

end
