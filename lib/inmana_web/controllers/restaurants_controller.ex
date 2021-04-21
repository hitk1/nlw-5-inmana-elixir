defmodule InmanaWeb.RestaurantsController do
  use InmanaWeb, :controller

  alias Inmana.Restaurant
  alias Inmana.Restaurants.Create, as: CreateRestaurant
  alias InmanaWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Restaurant{} = restaurant} <- CreateRestaurant.call(params) do
      conn
      |> put_status(:created)
      |> render("created.json", restaurant: restaurant)
    end
  end
end
