defmodule Rocketpay.NumbersTest do
  use ExUnit.Case
  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name, returns sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      assert response == {:ok, %{result: 37}}
    end

    test "when there is no file with the given name, returns an error" do
      response = Numbers.sum_from_file("banana")

      assert response == {:error, %{message: "Invalid file!"}}
    end
  end
end
