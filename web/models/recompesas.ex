defmodule Movecoinserver.Redwards do
  use Ecto.Model
  import Ecto.Query

  schema "Recompezas" do
    field :Name, :string
    field :Price, :string
    field :url_image, :string
    field :Descripcion, :string
    field :user_email, :string
  end

  def get_redwards(email) do
    query = from r in Movecoinserver.Redwards,
         where: r.user_email == ^email
    Movecoinserver.Repo.all(query)
  end


  # def sample_query do
  #   query = from w in Movecoinserver.User,
  #        select: w
  #   Movecoinserver.Repo.all(query)
  # end

end