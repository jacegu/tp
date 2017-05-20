defmodule Tp do

  def run(funs, params) when is_list(funs) do
    Enum.reduce(funs, params, fn(fun, result) ->
      apply(fun, result)
    end)
  end
  def run(fun, params), do: apply(fun, params)

end
