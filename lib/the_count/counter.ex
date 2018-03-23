defmodule TheCount.Counter do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, 0, name: __MODULE__)
  end

  def init(initial_count) do
    {:ok, initial_count}
  end

  def current_val do
    GenServer.call(__MODULE__, :current_val)
  end

  def handle_call(:current_val, _from, counter) do
    {:reply, counter, counter + 1}
  end

end
