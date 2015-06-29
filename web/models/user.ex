defmodule Movecoinserver.User do
  use Ecto.Model
  import Ecto.Query
  @primary_key{:email, :string, []}
  schema "Usuario" do
    field :password, :string
    field :App, :string
    field :Apm, :string
    field :Edad, :string
  end

  def authenticate(user,password) do
    case search_user(user) do
      [] -> 
        {:error, "user not found"}
      [user] ->
        validate_password(user.email,password)
    end
  end

  def validate_password(email,password) do
    case search_password(email,password) do 
      [] -> {:error, "invalid password"}
      _ -> {:ok, "authenticated"}
    end
  end
  
  

  defp search_user(email) do
    query = from u in Movecoinserver.User,
         where: u.email == ^email
    Movecoinserver.Repo.all(query)
  end

  defp search_password(email,password) do
    query = from u in Movecoinserver.User,
         where: u.email == ^email and u.password == ^password
    Movecoinserver.Repo.all(query)
  end

end