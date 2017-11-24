defmodule Lightning.Repo.Migrations.CreateSites do
  use Ecto.Migration

  def change do
    create table(:sites) do
      add :name, :string
      add :github_url, :string
      add :website, :string
    end
  end
end
