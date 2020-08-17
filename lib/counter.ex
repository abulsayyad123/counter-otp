defmodule Counter do
  alias Counter.Boundary

  def start(), do: Boundary.start()

  def inc(counter) do
    Boundary.inc(counter)
  end

  def dec(counter) do
    Boundary.dec(counter)
  end
end
