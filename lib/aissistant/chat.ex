defmodule Aissistant.Chat do
  use GenServer

  # Client

  def start_link(default) when is_map(default) do
    GenServer.start_link(__MODULE__, default)
  end


  def prompt(pid, prompt) do
    GenServer.call(pid, {:prompt, prompt})
  end

  # Server Callbacks

  @impl true
  def init(state) do
    {:ok, state}
  end

  @impl true
  def handle_call({:prompt, prompt}, _from, state) do
    dbg prompt
    {:reply, prompt, state}
  end


end
