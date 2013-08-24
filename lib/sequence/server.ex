defmodule Sequence.Server do
  use GenServer.Behaviour

  def init(current_number) when is_number(current_number) do
    { :ok, current_number }
  end

  def handle_call(:next_number, _from, current_number) do
    { :reply, current_number, current_number+1 }
  end

end