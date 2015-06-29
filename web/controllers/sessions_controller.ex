defmodule Movecoinserver.SessionsController do
  use Movecoinserver.Web, :controller

  plug :action

  def login(conn, params) do
  	case Movecoinserver.User.authenticate(params["user"],params["password"]) do
  		{:ok,_} ->
  			conn
      		|> put_status(200)
      		|> json %{login: "succes"}
      {:error,error} ->
      	conn
      		|> put_status(401)
      		|> json %{fail: error}	
  	end
    
  end
end
