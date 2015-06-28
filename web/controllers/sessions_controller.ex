defmodule Movecoinserver.SessionsController do
  use Movecoinserver.Web, :controller

  plug :action

  def login(conn, _params) do
    IO.inspect conn
    conn
      |> put_status(200)
      |> json %{succes: "succes"}
  end
end
