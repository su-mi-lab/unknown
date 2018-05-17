defmodule ApiGateway.V1.HandlerController do

  @moduledoc false

  use ApiGateway.Web, :controller

  def index(_conn) do

  end

  def show(conn, %{"handler" => handler, "id" => id}) do

    items = handler_config(handler)
            |> run_handler(:show, %{"id" => id})

    render(conn, "handler.json", items: items)
  end

  def create(_conn) do

  end

  def update(_conn) do

  end

  def delete(_conn) do

  end

  defp handler_config(handler) do
    Application.get_env(:handler, String.to_atom(handler))
  end

  defp run_handler(handler, type, params) do
    apply(Map.get(handler, type), :run, [params])
  end

end
