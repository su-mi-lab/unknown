defmodule ApiGateway.V1.HandlerControllerTest do
  use TestSupporter.Cases.ConnCase, async: true

  test "GET :index", %{conn: conn} do
    Application.get_all_env(:handler)
    |> Enum.each(
         fn {url, handlers} ->
           case handlers do
             %{index: _} ->
               response =
                 conn
                 |> get(v1_handler_path(conn, :index, url))
                 |> json_response(200)
               assert %{"data" => _} = response
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
             %{show: _} ->
               response =
                 conn
                 |> get(v1_handler_path(conn, :show, url, 1))
                 |> json_response(200)
               assert %{"data" => _} = response
             _ -> nil
           end
         end
       )
  end

end
