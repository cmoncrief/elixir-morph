defmodule CamelTest do

  use ExUnit.Case

  test "convert camel case to camel case" do
    assert Morph.to_camel("loremIpsumDolor") == "loremIpsumDolor"
  end

  test "convert human text to camel case'" do
    assert Morph.to_camel("Lorem ipsum dolor") == "loremIpsumDolor"
  end

  test "convert snake case to camel case" do
    assert Morph.to_camel("lorem-ipsum-dolor") == "loremIpsumDolor"
  end

  test "convert hypenated text to camel case" do
    assert Morph.to_camel("lorem-ipsum-dolor") == "loremIpsumDolor"
  end

  test "convert dotted text to camel case" do
    assert Morph.to_camel("lorem.ipsum.dolor") == "loremIpsumDolor"
  end

  test "convert dashed to camel case" do
    assert Morph.to_camel("lorem_ipsum_dolor") == "loremIpsumDolor"
  end

  test "convert mixed text to camel case" do
    assert Morph.to_camel("Lorem.ipsum-DolorSit_amet") == "loremIpsumDolorSitAmet"
  end

  test "convert atom to camel case" do
    assert Morph.to_camel(:loremIpsumDolor) == "loremIpsumDolor"
  end

  test "convert list to camel case" do
    list = ["loremIpsum", "dolorSit", "amet"]
    assert Morph.to_camel(list) == ["loremIpsum", "dolorSit", "amet"]
  end

  test "don't convert unsupported types to camel case" do
    assert Morph.to_camel(6) == 6
  end

  # Upper camel

  test "convert camel case to upper camel case" do
    assert Morph.to_upper_camel("loremIpsumDolor") == "LoremIpsumDolor"
  end

  test "convert human text to upper camel case'" do
    assert Morph.to_upper_camel("Lorem ipsum dolor") == "LoremIpsumDolor"
  end

  test "convert snake case to upper camel case" do
    assert Morph.to_upper_camel("lorem-ipsum-dolor") == "LoremIpsumDolor"
  end

  test "convert hypenated text to upper camel case" do
    assert Morph.to_upper_camel("lorem-ipsum-dolor") == "LoremIpsumDolor"
  end

  test "convert dotted text to upper camel case" do
    assert Morph.to_upper_camel("lorem.ipsum.dolor") == "LoremIpsumDolor"
  end

  test "convert dashed to upper camel case" do
    assert Morph.to_upper_camel("lorem_ipsum_dolor") == "LoremIpsumDolor"
  end

  test "convert mixed text to upper camel case" do
    assert Morph.to_upper_camel("Lorem.ipsum-DolorSit_amet") == "LoremIpsumDolorSitAmet"
  end

  test "convert atom to upper camel case" do
    assert Morph.to_upper_camel(:loremIpsumDolor) == "LoremIpsumDolor"
  end

  test "convert list to upper camel case" do
    list = ["loremIpsum", "dolorSit", "amet"]
    assert Morph.to_upper_camel(list) == ["LoremIpsum", "DolorSit", "Amet"]
  end

  test "don't convert unsupported types to upper camel case" do
    assert Morph.to_upper_camel(6) == 6
  end

  test "don't convert empty strings and don't fail on empty strings" do
    assert Morph.to_upper_camel("") == ""
  end

end
