defmodule Counter.Boundary do
  use GenServer
  alias Counter.Core

  def start() do
    GenServer.start_link(__MODULE__, 0)
  end

  def init(number) do
    {:ok, number}
  end

  def handle_call(:inc, _from, state) do
    {:reply, Core.inc(state), Core.inc(state)}
  end

  def handle_call(:dec, _from, state) do
    {:reply, Core.dec(state), Core.dec(state)}
  end

  def inc(pid) do
    GenServer.call(pid, :inc)
  end

  def dec(pid) do
    GenServer.call(pid, :dec)
  end

end