defmodule Morph.Title do

  @moduledoc false
  
  def to_title(input) when is_atom(input) do
    to_title Atom.to_string(input)
  end

  def to_title(input) when is_list(input) do
    for item <- input, do: to_title item
  end

  def to_title(input) when is_bitstring(input) do
    input = Morph.to_human input
    Regex.replace ~r/(\s)([a-z])/, input, fn _, p1, p2 -> p1 <> String.upcase(p2) end
  end

  def to_title(input) do
    input
  end

end
