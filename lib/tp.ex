defmodule Tp do

  def run(fun) do
    fun.()
  end
  def run(fun, param), do: fun.(param)

end
