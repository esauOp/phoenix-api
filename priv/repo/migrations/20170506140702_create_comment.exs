defmodule Movies.Repo.Migrations.CreateComment do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :body, :text
      add :movie_id, references(:movies, on_delete: :nothing)

      timestamps()
    end
    create index(:comments, [:movie_id])

  end
end
