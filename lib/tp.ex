defmodule Tp do

  def run(fun),        do: fun.()
  def run(fun, params) when is_list(params), do: apply(fun, params)
  def run(fun, param), do: fun.(param)

end
