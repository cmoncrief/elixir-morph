defmodule TitleTest do

  use ExUnit.Case
    
  test "convert snake case to title format" do
    assert Morph.to_title("lorem-ipsum-dolor") == "Lorem Ipsum Dolor"
  end

  test "convert camel case to title format'" do
    assert Morph.to_title("Lorem ipsum dolor") == "Lorem Ipsum Dolor"
  end

  test "convert camel case with abbreviations to title format" do
    assert Morph.to_title("NASAAndTheJPLHaveARocket") == "NASA And The JPL Have A Rocket"
  end

  test "convert hypenated text to title format" do
    assert Morph.to_title("lorem-ipsum-dolor") == "Lorem Ipsum Dolor"
  end

  test "convert dotted text to title format" do
    assert Morph.to_title("lorem.ipsum.dolor") == "Lorem Ipsum Dolor"
  end

  test "convert dashed to title format" do
    assert Morph.to_title("lorem_ipsum_dolor") == "Lorem Ipsum Dolor"
  end

  test "convert mixed text to title format" do
    assert Morph.to_title("Lorem.ipsum-DolorSit_amet") == "Lorem Ipsum Dolor Sit Amet"
  end

  test "separate single letter words in title format" do
    assert Morph.to_title("thisIsACamelCaseWord") == "This Is A Camel Case Word"
  end

  test "convert human format to title format" do
    assert Morph.to_title("Lorem ipsum dolor") == "Lorem Ipsum Dolor"
  end

  test "convert atom to title format" do
    assert Morph.to_title(:loremIpsumDolor) == "Lorem Ipsum Dolor"
  end

  test "convert list to title format" do
    list = ["loremIpsum", "dolorSit", "amet"]
    assert Morph.to_title(list) == ["Lorem Ipsum", "Dolor Sit", "Amet"]
  end

  test "don't convert unsupported types to title format" do
    assert Morph.to_title(6) == 6
  end

  test "don't convert empty strings and don't fail on empty strings" do
    assert Morph.to_title("") == ""
  end

end
