# Morph

Lightweight string transformations for Elixir.

## Installation

Add `morph` to your list of dependencies in `mix.exs`:

      def deps do
        [{:morph, "~> 0.0.1"}]
      end

## Overview

Morph can transform strings, atoms, and lists to several formats:

    Morph.to_snake "loremIpsumDolor"          # => "lorem_ipsum_dolor"
    Morph.to_snake_caps "loremIpsumDolor"     # => 'LOREM_IPSUM_DOLOR'
    Morph.to_camel "lorem_ipsum_dolor"        # => 'loremIpsumDolor'
    Morph.to_upper_camel "lorem_ipsum_dolor"  # => 'LoremIpsumDolor'
    Morph.to_dashed "lorem_ipsum_dolor"       # => 'lorem-ipsum-dolor'
    Morph.to_human "lorem_ipsum_dolor"        # => 'Lorem ipsum dolor'
    Morph.to_title "lorem_ipsum_dolor"        # => 'Lorem Ipsum Dolor'

    Morph.to_snake ["lifeTheUniverse", :andEverything, 42]
    # => ["life_the_universe", "and_everything", 42]

## Examples

### Snake case

Converts a string, atom or list to snake case.

    iex> Morph.to_snake "Lorem ipsum dolor"
    "lorem_ipsum_dolor"

    iex> Morph.to_snake [:loremIpsum, "life-the-universe", "And Everything", 42]
    ["lorem_ipsum", "life_the_universe", "and_everything", 42]

### Caps snake case

Converts a string, atom, or list to upper (screaming) snake case.

    iex> Morph.to_snake_caps "Lorem ipsum dolor"
    "LOREM_IPSUM_DOLOR"

    iex> Morph.to_snake_caps [:loremIpsum, "life-the-universe", "And Everything", 42]
    ["LOREM_IPSUM", "LIFE_THE_UNIVERSE", "AND_EVERYTHING", 42]

### Dashed

Converts a string, atom, or list to dashed format.

    iex> Morph.to_dashed "Lorem ipsum dolor"
    "lorem-ipsum-dolor"

    iex> Morph.to_dashed [:loremIpsum, "life.the.universe", "And Everything", 42]
    ["lorem-ipsum", "life-the-universe", "and-everything", 42]

### Camel

Converts a string, atom, or list to camel case.

    iex> Morph.to_camel "Lorem ipsum dolor"
    "loremIpsumDolor"

    iex> Morph.to_camel [:loremIpsum, "life_the_universe", "And Everything", 42]
    ["loremIpsum", "lifeTheUniverse", "andEverything", 42]

### Upper camel case

Converts a string, atom, or list to upper camel case.

    iex> Morph.to_upper_camel "Lorem ipsum dolor"
    "LoremIpsumDolor"

    iex> Morph.to_upper_camel [:loremIpsum, "life_the_universe", "And Everything", 42]
    ["LoremIpsum", "LifeTheUniverse", "AndEverything", 42]

## Human format

Converts a string, atom or list to human format.

    iex> Morph.to_human "Lorem ipsum dolor"
    "Lorem ipsum dolor"

    iex> Morph.to_human [:loremIpsum, "life_the_universe", "And Everything", 42]
    ["Lorem ipsum", "Life the universe", "And everything", 42]

## Title format

Converts a string, atom, or list to title format

    iex> Morph.to_title "Lorem ipsum dolor"
    "Lorem Ipsum Dolor"

    iex> Morph.to_title [:loremIpsum, "life_the_universe", "And Everything", 42]
    ["Lorem Ipsum", "Life The Universe", "And Everything", 42]
