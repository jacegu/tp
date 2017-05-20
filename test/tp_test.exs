defmodule TpTest do
  use ExUnit.Case

  test "runs a list of functions in order" do
    fun1 = fn(x, y, z) -> [x*x, y*y, z*z] end
    fun2 = fn(x, y, z) -> [z, y, x] end

    assert Tp.run([], [1, 2, 3]) == [1, 2, 3]
    assert Tp.run([fun2], [:a, :b, :c]) == [:c, :b, :a]
    assert Tp.run([fun1, fun2], [2, 3, 5]) == [25, 9, 4]
  end

end
