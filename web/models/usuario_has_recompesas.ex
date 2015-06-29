defmodule Movecoinserver.UserHasRedwards do
  use Ecto.Model
  import Ecto.Query

  @primary_key{:usuario_email, :string, []}
  @primary_key{:recompesas_id, :integer, []}
  schema "UsuarioHasRecompensas" do

  end

  def get_recompensas_id(email) do
    query = from ru in Movecoinserver.UserHasRedwards,
         where: ru.usuario_email == ^email
    Movecoinserver.Repo.all(query)
  end
  # def sample_query do
  #   query = from w in Movecoinserver.User,
  #        select: w
  #   Movecoinserver.Repo.all(query)
  # end

end