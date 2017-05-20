defmodule TpTest do
  use ExUnit.Case

  test "runs a single function" do
    assert Tp.run(fn -> 2 + 2 end, []) == 4
    assert Tp.run(&String.upcase/1, ["foo"]) == "FOO"
    assert Tp.run(fn(x, y) -> x + y end, [1, 2]) == 3
  end

end
