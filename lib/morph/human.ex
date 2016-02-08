defmodule Morph.Human do

  @moduledoc false
  
  def to_human(input) when is_atom(input) do
    to_human Atom.to_string(input)
  end

  def to_human(input) when is_list(input) do
      for item <- input, do: to_human item
  end

  def to_human(input) when is_bitstring(input) do
    input = input
    |> String.replace(~r/[-._]/, " ")
    |> String.replace(~r/([A-Z\d])([A-Z][a-z\d])/, "\\1 \\2")
    |> String.replace(~r/([a-z])([A-Z])/, "\\1 \\2")
    input = Regex.replace ~r/(\s([a-zA-Z])\s)/, input, fn _, p1 -> String.downcase p1 end
    input = Regex.replace ~r/([A-Z])([a-z])/, input, fn _, p1, p2 -> String.downcase(p1) <> p2 end
    Morph.upper_first(input)
  end

  def to_human(input) do
    input
  end

end
