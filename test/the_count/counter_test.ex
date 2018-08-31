defmodule TheCount.CounterTest do
  use ExUnit.Case, async: true
  alias TheCount.Counter

  test "it counts" do
    {:ok, counter_pid} = Counter.start_link(:local)
    assert Counter.val(counter_pid) == 0
    assert Counter.val(counter_pid) == 1
  end

end

defmodule TheCount.CounterTest2 do
  use ExUnit.Case, async: true
  alias TheCount.Counter

  test "it counts some more" do
    {:ok, counter_pid} = Counter.start_link(:local)
    assert Counter.val(counter_pid) == 0
    assert Counter.val(counter_pid) == 1
  end
end
