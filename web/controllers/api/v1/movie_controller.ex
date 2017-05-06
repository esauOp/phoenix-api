defmodule Movie.Api.V1.MovieController do
    use Movies.Web, :controller

    alias Movies.Movie

    def index(conn, _params) do
      movies = Repo.all(Movie)
      render(conn, "index.json", movies: movies)
    end

    def show(conn, %{"id" => id}) do
      movie = Repo.get!(Movie, id)
      render(conn, "show.json", movie: movie)
    end

end
