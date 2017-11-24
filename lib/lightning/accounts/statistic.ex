defmodule Lightning.Accounts.Statistic do
  use Ecto.Schema
  import Ecto.Changeset

  alias Lightning.Accounts.{Statistic, Site}

  schema "statistics" do
    field :response_time, :string
    field :response_code, :string

    belongs_to :site, Site
  end

  @fields [:response_time, :response_time]

  def changeset(%Statistic{} = site, attrs) do
    site
    |> cast(attrs, @fields)
  end
end
