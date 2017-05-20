defmodule Tp do

  def run([fun1, fun2], params), do: apply(fun2, apply(fun1, params))
  def run(fun, params), do: apply(fun, params)

end
