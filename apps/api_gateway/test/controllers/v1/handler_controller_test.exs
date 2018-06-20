defmodule ApiGateway.V1.HandlerControllerTest do
  use TestSupporter.Cases.ConnCase, async: true

  test "GET :index", %{conn: conn} do
    Application.get_all_env(:handler)
    |> Enum.each(
         fn {url, handlers} ->
           case handlers do
             %{index: _} -> conn_index(conn, url)
             _ -> nil
           end
         end
       )
  end

  test "POST :create", %{conn: conn} do
    Application.get_all_env(:handler)
    |> Enum.each(
         fn {url, handlers} ->
           case handlers do
             %{create: _} -> conn_create(conn, url)
             _ -> nil
           end
         end
       )
  end

  test "PUT :update", %{conn: conn} do
    Application.get_all_env(:handler)
    |> Enum.each(
         fn {url, handlers} ->
           case handlers do
             %{update: _} -> conn_update(conn, url)
             _ -> nil
           end
         end
       )
  end

  test "GET :show", %{conn: conn} do
    Application.get_all_env(:handler)
    |> Enum.each(
         fn {url, handlers} ->
           case handlers do
             %{show: _} -> conn_show(conn, url)
             _ -> nil
           end
         end
       )
  end

  test "DELETE :delete", %{conn: _} do

  end

  defp conn_index(conn, url) do
    response = conn
               |> get(v1_handler_path(conn, :index, url))
               |> json_response(200)
    assert %{"data" => _} = response
  end

  defp conn_create(conn, url) do

    path = v1_handler_path(
      conn,
      :create,
      url,
      params: %{
        "name" => "data"
      }
    )

    response = conn
               |> post(path)
               |> json_response(200)
    assert %{"error" => _} = response
  end

  defp conn_update(conn, url) do

    path = v1_handler_path(
      conn,
      :create,
      url,
      params: [
        id: 1,
        params: %{
          "test col" => "data"
        }
      ]
    )

    response = conn
               |> post(path)
               |> json_response(200)
    assert %{"error" => _} = response
  end

  defp conn_show(conn, url) do
    response =
      conn
      |> get(v1_handler_path(conn, :show, url, 1))
      |> json_response(200)
    assert %{"data" => _} = response
  end

end
