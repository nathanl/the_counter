defmodule TheCount.Counter do
  use GenServer

  def start_link(mode \\ :global) when mode in [:local, :global] do
    opts = if mode == :global do
      [name: __MODULE__]
    else
      []
    end
    GenServer.start_link(__MODULE__, 0, opts)
  end

  def init(initial_count) do
    {:ok, initial_count}
  end

  def val(server \\ __MODULE__) do
    GenServer.call(server, :val)
  end

  def reset(server \\ __MODULE__) do
    GenServer.call(server, :reset)
  end

  def handle_call(:val, _from, counter) do
    :timer.sleep(20)
    {:reply, counter, counter + 1}
  end

  def handle_call(:reset, _from, _counter) do
    {:reply, :ok, 0}
  end

end
