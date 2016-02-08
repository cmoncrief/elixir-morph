defmodule Morph.Dashed do

  @moduledoc false
  
  def to_dashed(input) when is_atom(input) do
    to_dashed Atom.to_string(input)
  end

  def to_dashed(input) when is_list(input) do
    for item <- input, do: to_dashed item
  end

  def to_dashed(input) when is_bitstring(input) do
    input
    |> String.replace(~r/([A-Z\d])([A-Z][a-z\d])/, "\\1-\\2")
    |> String.replace(~r/([a-z\d])([A-Z])/, "\\1-\\2")
    |> String.replace(~r/[_. ]/, "-")
    |> String.downcase
  end

  def to_dashed(input) do
    input
  end
end
