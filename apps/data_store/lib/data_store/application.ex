defmodule DataStore.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(DataStore.Repo, [])
    ], [
      strategy: :one_for_one, name: DataStoreSupervisor
    ])
  end
end
