defmodule Movecoinserver.User do
  use Ecto.Model
  import Ecto.Query
  @primary_key{:Email, :string, []}
  schema "Usuario" do
    field :Password, :string
    field :App, :string
    field :Apm, :string
    field :Edad, :string
  end

  def sample_query do
    query = from w in Movecoinserver.User,
         select: w
    Movecoinserver.Repo.all(query)
  end

end