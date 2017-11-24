defmodule Lightning.Repo.Migrations.CreateStatistics do
  use Ecto.Migration

  def change do
    create table(:statistics) do
      add :response_time, :string
      add :response_code, :string

      add :site_id, references(:sites, on_delete: :delete_all)

      timestamps(type: :utc_datetime)
    end
  end
end
