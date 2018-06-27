defmodule ApiGateway.V1.HandlerView do
  @moduledoc false

  use ApiGateway.Web, :view

  def render("handler.json", %{items: {:ok, items}}) do
    %{data: items}
  end

  def render("handler.json", %{items: {:error, message}}) do
    %{error: message}
  end

  def render("handler.json", %{items: items}) do
    %{data: items}
  end
end
