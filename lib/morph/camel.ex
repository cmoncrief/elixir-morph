defmodule Morph.Camel do

  @moduledoc false

  def to_camel(input, upper \\ false)

  def to_camel(input, upper) when is_atom(input) do
    to_camel Atom.to_string(input), upper
  end

  def to_camel(input, upper) when is_list(input) do
    for item <- input, do: to_camel item, upper
  end

  def to_camel(input, upper) when is_bitstring(input) do
    input = if String.match?(input, ~r/[a-z]/), do: input, else: String.downcase input
    input = Regex.replace ~r/([-_ .]+)([\w])/, input, fn _, _, p2 -> String.upcase p2 end
    if upper, do: Morph.upper_first(input), else: Morph.lower_first(input)
  end

  def to_camel(input, _upper) do
    input
  end

  def to_upper_camel(input) do
    to_camel input, true
  end

end
