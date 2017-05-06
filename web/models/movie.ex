defmodule Movies.Movie do
  use Movies.Web, :model

  schema "movies" do
    field :title, :string
    field :summary, :string
    field :year, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :summary, :year])
    |> validate_required([:title, :summary, :year])
  end
end
