defmodule Lightning.Accounts.Site do
  use Ecto.Schema
  import Ecto.Changeset

  alias Lightning.Accounts.Site

  schema "sites" do
    field :name, :string
    field :github_url, :string
    field :website, :string
  end

  @fields [:name, :github_url, :website]

  def changeset(%Site{} = site, attrs) do
    site
    |> cast(attrs, @fields)
  end
end
