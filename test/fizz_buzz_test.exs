defmodule FizzBuzzTest do
  use ExUnit.Case
  doctest FizzBuzz

  describe "build/1" do
    test "when an valid file is provided, returns the converted list" do
      expected_response = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz, :fizzbuzz, :buzz]}
      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when an invalid file is provided, returns an error" do
      assert FizzBuzz.build("invalid_file.txt") == {:error, "Error reading the file: enoent"}
    end
  end
end
