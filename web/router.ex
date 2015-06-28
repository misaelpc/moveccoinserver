defmodule Movecoinserver.Router do
  use Movecoinserver.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Movecoinserver do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api/v1", Movecoinserver do
    pipe_through :api
    post "/sessions/login", SessionsController, :login
    get "/users/:id/redwards", RedwardsController, :fetch_data
  end
end
