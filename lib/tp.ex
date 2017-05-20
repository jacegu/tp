defmodule Tp do

  def run(funs, params) do
    Enum.reduce(funs, params, fn(fun, result) ->
      apply(fun, result)
    end)
  end

end
