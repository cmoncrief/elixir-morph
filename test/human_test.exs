defmodule HumanTest do

  use ExUnit.Case

  test "convert snake case to human format" do
    assert Morph.to_human("lorem-ipsum-dolor") == "Lorem ipsum dolor"
  end

  test "convert camel case to human format'" do
    assert Morph.to_human("Lorem ipsum dolor") == "Lorem ipsum dolor"
  end

  test "convert camel case with abbreviations to human format" do
    assert Morph.to_human("NASAAndTheJPL") == "NASA and the JPL"
  end

  test "convert hypenated text to human format" do
    assert Morph.to_human("lorem-ipsum-dolor") == "Lorem ipsum dolor"
  end

  test "convert dotted text to human format" do
    assert Morph.to_human("lorem.ipsum.dolor") == "Lorem ipsum dolor"
  end

  test "convert dashed to human format" do
    assert Morph.to_human("lorem_ipsum_dolor") == "Lorem ipsum dolor"
  end

  test "convert mixed text to human format" do
    assert Morph.to_human("Lorem.ipsum-DolorSit_amet") == "Lorem ipsum dolor sit amet"
  end

  test "separate single letter words in human format" do
    assert Morph.to_human("thisIsACamelCaseWord") == "This is a camel case word"
  end

  test "convert human format to human format" do
    assert Morph.to_human("Lorem ipsum dolor") == "Lorem ipsum dolor"
  end

  test "convert atom to human format" do
    assert Morph.to_human(:loremIpsumDolor) == "Lorem ipsum dolor"
  end

  test "convert list to human format" do
    list = ["loremIpsum", "dolorSit", "amet"]
    assert Morph.to_human(list) == ["Lorem ipsum", "Dolor sit", "Amet"]
  end

  test "don't convert unsupported types to human format" do
    assert Morph.to_human(6) == 6
  end

end
