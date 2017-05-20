defmodule TpTest do
  use ExUnit.Case

  test "runs an anonymous function without params" do
    assert Tp.run(fn -> 2 + 2 end) == 4
    assert Tp.run(fn -> String.upcase("foo") end) == "FOO"
  end

  test "runs an anonymous function with 1 param" do
    assert Tp.run(fn(x) -> 2 + x end, 2) == 4
  end

  test "runs an anonymous function with 2 params" do
    assert Tp.run(fn(x, y) -> x + y end, [1, 2]) == 3
  end

end
