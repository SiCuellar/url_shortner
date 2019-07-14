defmodule UrlShortner.Urls.Link do
  use Ecto.Schema
  import Ecto.Changeset

  schema "links" do
    field :long_url, :string
    field :short_url, :string

    timestamps()
  end

  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [:long_url, :short_url])
    |> validate_required([:long_url, :short_url])
    |> unique_constraint(:long_url)
    |> unique_constraint(:short_url)
  end
end
