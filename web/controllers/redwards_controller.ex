defmodule Movecoinserver.RedwardsController do
  use Movecoinserver.Web, :controller

  plug :action

  def fetch_data(conn, params) do
    IO.inspect conn
	
	result = Movecoinserver.Redwards.get_redwards(params["id"])

    conn
      |> put_status(200)
      |> json result
  end
end
