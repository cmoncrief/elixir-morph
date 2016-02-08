defmodule Morph do

  @doc """
    Lowercases the first letter of a given string

    ## Examples

      iex> Morph.lower_first "Gemini"
      "gemini"
  """
  defdelegate lower_first(input), to: Morph.Util

  @doc """
    Uppercases the first letter of a given string

    ### Examples schmapmpls

      iex> Morph.upper_first "gemini"
      "Gemini"
  """
  defdelegate upper_first(input), to: Morph.Util

  @doc """
    Converts a string, atom, or list to snake case

    ## Examples

      iex> Morph.to_snake "Lorem ipsum dolor"
      "lorem_ipsum_dolor"

      iex> Morph.to_snake [:loremIpsum, "life-the-universe", "And Everything", 42]
      ["lorem_ipsum", "life_the_universe", "and_everything", 42]
  """
  defdelegate to_snake(input), to: Morph.Snake

  @doc """
    Converts a string, atom, or list to upper (screaming) snake case

    ## Examples

      iex> Morph.to_snake_caps "Lorem ipsum dolor"
      "LOREM_IPSUM_DOLOR"

      iex> Morph.to_snake_caps [:loremIpsum, "life-the-universe", "And Everything", 42]
      ["LOREM_IPSUM", "LIFE_THE_UNIVERSE", "AND_EVERYTHING", 42]
  """
  defdelegate to_snake_caps(input), to: Morph.Snake

  @doc """
    Converts a string, atom, or list to dashed format

    ## Examples

      iex> Morph.to_dashed "Lorem ipsum dolor"
      "lorem-ipsum-dolor"

      iex> Morph.to_dashed [:loremIpsum, "life.the.universe", "And Everything", 42]
      ["lorem-ipsum", "life-the-universe", "and-everything", 42]
  """
  defdelegate to_dashed(input), to: Morph.Dashed

  @doc """
    Converts a string, atom, or list to camel case

    ## Examples

      iex> Morph.to_camel "Lorem ipsum dolor"
      "loremIpsumDolor"

      iex> Morph.to_camel [:loremIpsum, "life_the_universe", "And Everything", 42]
      ["loremIpsum", "lifeTheUniverse", "andEverything", 42]
  """
  defdelegate to_camel(input), to: Morph.Camel
  # defdelegate to_camel(input, upper), to: Morph.Camel

  @doc """
    Converts a string, atom, or list to upper camel case

    ## Examples

      iex> Morph.to_upper_camel "Lorem ipsum dolor"
      "LoremIpsumDolor"

      iex> Morph.to_upper_camel [:loremIpsum, "life_the_universe", "And Everything", 42]
      ["LoremIpsum", "LifeTheUniverse", "AndEverything", 42]
  """
  defdelegate to_upper_camel(input), to: Morph.Camel

  @doc """
    Converts a string, atom, or list to human format

    ## Examples

      iex> Morph.to_human "Lorem ipsum dolor"
      "Lorem ipsum dolor"

      iex> Morph.to_human [:loremIpsum, "life_the_universe", "And Everything", 42]
      ["Lorem ipsum", "Life the universe", "And everything", 42]
  """
  defdelegate to_human(input), to: Morph.Human

  #############################################################################
  # to_title functions
  #############################################################################

  @doc """
    Converts a string, atom, or list to title format

    ## Examples

      iex> Morph.to_title "Lorem ipsum dolor"
      "Lorem Ipsum Dolor"

      iex> Morph.to_title [:loremIpsum, "life_the_universe", "And Everything", 42]
      ["Lorem Ipsum", "Life The Universe", "And Everything", 42]
  """
  defdelegate to_title(input), to: Morph.Title


end
