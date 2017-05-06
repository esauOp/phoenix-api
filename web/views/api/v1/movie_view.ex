defmodule Movie.Api.V1.MovieView do
    use Movies.Web, :view

  def render("index.json", %{movies: movies}) do
    %{data: render_many(movies, Movie.Api.V1.MovieView, "movie.json")}
  end

  def render("show.json", %{movie: movie}) do
    %{data: render_one(movie, Movie.Api.V1.MovieView, "movie.json")}
  end

  def render("movie.json", %{movie: movie}) do
    %{id: movie.id,
    title: movie.title,
    summary: movie.summary,
    year: movie.year}
  end

end
