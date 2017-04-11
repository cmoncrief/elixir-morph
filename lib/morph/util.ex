defmodule Morph.Util do

  @moduledoc false

  def upper_first(""), do: ""
  def upper_first(input) do
    [head | tail] = String.codepoints input
    to_string [String.upcase(head) | tail]
  end

  def lower_first(""), do: ""
  def lower_first(input) do
    [head | tail] = String.codepoints input
    to_string [String.downcase(head) | tail]
  end

end
