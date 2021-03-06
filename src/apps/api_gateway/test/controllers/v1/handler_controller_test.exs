defmodule ApiGateway.V1.HandlerControllerTest do
  use TestSupporter.Cases.ConnCase, async: true

  test "GET :index", %{conn: conn} do
    Application.get_all_env(:handler)
    |> Enum.each(&(index_handler(conn, &1)))
  end

  test "POST :create", %{conn: conn} do
    Application.get_all_env(:handler)
    |> Enum.each(&(create_handler(conn, &1)))
  end

  test "PUT :update", %{conn: conn} do
    Application.get_all_env(:handler)
    |> Enum.each(&(update_handler(conn, &1)))
  end

  test "GET :show", %{conn: conn} do
    Application.get_all_env(:handler)
    |> Enum.each(&(show_handler(conn, &1)))
  end

  test "DELETE :delete", %{conn: conn} do
    Application.get_all_env(:handler)
    |> Enum.each(&(delete_handler(conn, &1)))
  end

  defp conn_index(conn, url) do
    response = conn
               |> get(v1_handler_path(conn, :index, url))
               |> json_response(200)
    assert %{"data" => _} = response
  end

  defp index_handler(conn, {url, handlers}) do
    case handlers do
      %{index: _} -> conn_index(conn, url)
      _ -> nil
    end
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

  defp create_handler(conn, {url, handlers}) do
    case handlers do
      %{create: _} -> conn_create(conn, url)
      _ -> nil
    end
  end

  defp conn_update(conn, url) do

    path = v1_handler_path(
      conn,
      :update,
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

  defp update_handler(conn, {url, handlers}) do
    case handlers do
      %{update: _} -> conn_update(conn, url)
      _ -> nil
    end
  end

  defp conn_show(conn, url) do
    response =
      conn
      |> get(v1_handler_path(conn, :show, url, 1))
      |> json_response(200)
    assert %{"data" => _} = response
  end

  defp show_handler(conn, {url, handlers}) do
    case handlers do
      %{show: _} -> conn_show(conn, url)
      _ -> nil
    end
  end

  defp conn_delete(conn, url) do

    path = v1_handler_path(
      conn,
      :delete,
      url,
      id: 1
    )

    response = conn
               |> delete(path)
               |> json_response(200)

    assert %{"data" => _} = response
  end

  defp delete_handler(conn, {url, handlers}) do
    case handlers do
      %{delete: _} -> conn_delete(conn, url)
      _ -> nil
    end
  end

end
