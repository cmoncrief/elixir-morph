defmodule DashedTest do

  use ExUnit.Case

  test "convert camel case to dashed" do
    assert Morph.to_dashed("loremIpsumDolor") == "lorem-ipsum-dolor"
  end

  test "convert camel case with abbreviations to dashed" do
    assert Morph.to_dashed("NASAAndTheJPL") == "nasa-and-the-jpl"
  end

  test "convert human text to dashed'" do
    assert Morph.to_dashed("Lorem ipsum dolor") == "lorem-ipsum-dolor"
  end

  test "convert snake case to dashed" do
    assert Morph.to_dashed("lorem-ipsum-dolor") == "lorem-ipsum-dolor"
  end

  test "convert hypenated text to dashed" do
    assert Morph.to_dashed("lorem-ipsum-dolor") == "lorem-ipsum-dolor"
  end

  test "convert dotted text to dashed" do
    assert Morph.to_dashed("lorem.ipsum.dolor") == "lorem-ipsum-dolor"
  end

  test "convert dashed to dashed" do
    assert Morph.to_dashed("lorem_ipsum_dolor") == "lorem-ipsum-dolor"
  end

  test "convert mixed text to dashed" do
    assert Morph.to_dashed("LOREM.ipsum-DolorSit_amet") == "lorem-ipsum-dolor-sit-amet"
  end

  test "convert atom to dashed" do
    assert Morph.to_dashed(:loremIpsumDolor) == "lorem-ipsum-dolor"
  end

  test "convert list to dashed" do
    list = ["loremIpsum", "dolorSit", "amet"]
    assert Morph.to_dashed(list) == ["lorem-ipsum", "dolor-sit", "amet"]
  end

  test "don't convert unsupported types to dashed" do
    assert Morph.to_dashed(6) == 6
  end

end
