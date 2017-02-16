defmodule SnakeTest do

  use ExUnit.Case

  test "convert camel case to snake case" do
    assert Morph.to_snake("loremIpsumDolor") == "lorem_ipsum_dolor"
  end

  test "convert camel case with abbreviations to snake case" do
    assert Morph.to_snake("NASAAndTheJPL") == "nasa_and_the_jpl"
  end

  test "convert human text to snake case'" do
    assert Morph.to_snake("Lorem ipsum dolor") == "lorem_ipsum_dolor"
  end

  test "convert hypenated text to snake case" do
    assert Morph.to_snake("lorem-ipsum-dolor") == "lorem_ipsum_dolor"
  end

  test "convert dotted text to snake case" do
    assert Morph.to_snake("lorem.ipsum.dolor") == "lorem_ipsum_dolor"
  end

  test "convert snake case to snake case" do
    assert Morph.to_snake("lorem_ipsum_dolor") == "lorem_ipsum_dolor"
  end

  test "convert mixed text to snake case" do
    assert Morph.to_snake("LOREM.ipsum-DolorSit_amet") == "lorem_ipsum_dolor_sit_amet"
  end

  test "convert atom to snake case" do
    assert Morph.to_snake(:loremIpsumDolor) == "lorem_ipsum_dolor"
  end

  test "convert list to snake case" do
    list = ["loremIpsum", "dolorSit", "amet"]
    assert Morph.to_snake(list) == ["lorem_ipsum", "dolor_sit", "amet"]
  end

  test "don't convert unsupported types to snake case" do
    assert Morph.to_snake(6) == 6
  end

  test "convert camel case to snake caps" do
    assert Morph.to_snake_caps("loremIpsumDolor") == "LOREM_IPSUM_DOLOR"
  end

  test "convert camel case with abbreviations to snake caps" do
    assert Morph.to_snake_caps("NASAAndTheJPL") == "NASA_AND_THE_JPL"
  end

  test "convert human text to snake caps'" do
    assert Morph.to_snake_caps("Lorem ipsum dolor") == "LOREM_IPSUM_DOLOR"
  end

  test "convert hypenated text to snake caps" do
    assert Morph.to_snake_caps("lorem-ipsum-dolor") == "LOREM_IPSUM_DOLOR"
  end

  test "convert dotted text to snake caps" do
    assert Morph.to_snake_caps("lorem.ipsum.dolor") == "LOREM_IPSUM_DOLOR"
  end

  test "convert snake caps to snake caps" do
    assert Morph.to_snake_caps("lorem_ipsum_dolor") == "LOREM_IPSUM_DOLOR"
  end

  test "convert mixed text to snake caps" do
    assert Morph.to_snake_caps("LOREM.ipsum-DolorSit_amet") == "LOREM_IPSUM_DOLOR_SIT_AMET"
  end

  test "convert atom to snake caps" do
    assert Morph.to_snake_caps(:loremIpsumDolor) == "LOREM_IPSUM_DOLOR"
  end

  test "convert list to snake caps" do
    list = ["loremIpsum", "dolorSit", "amet"]
    assert Morph.to_snake_caps(list) == ["LOREM_IPSUM", "DOLOR_SIT", "AMET"]
  end

  test "don't convert unsupported types to snake caps" do
    assert Morph.to_snake_caps(6) == 6
  end

  test "don't convert empty strings and don't fail on empty strings" do
    assert Morph.to_snake_caps("") == ""
  end

end
