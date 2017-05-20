defmodule TpTest do
  use ExUnit.Case

  test "runs an anonymous function without params" do
    assert Tp.run(fn -> 2 + 2 end) == 4
    assert Tp.run(fn -> String.upcase("foo") end) == "FOO"
  end

end
