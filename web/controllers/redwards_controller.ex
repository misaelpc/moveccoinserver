defmodule Movecoinserver.RedwardsController do
  use Movecoinserver.Web, :controller

  plug :action

  def fetch_data(conn, _params) do
    IO.inspect conn
    conn
      |> put_status(200)
      |> json %{succes: "succes"}
  end
end
