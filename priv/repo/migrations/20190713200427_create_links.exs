defmodule UrlShortner.Repo.Migrations.CreateLinks do
  use Ecto.Migration

  def change do
    create table(:links) do
      add :long_url, :string
      add :short_url, :string

      timestamps()
    end

    create unique_index(:links, [:long_url])
    create unique_index(:links, [:short_url])
  end
end
