defmodule Tp do

  def run(fun),        do: fun.()
  def run(fun, param), do: fun.(param)

end
