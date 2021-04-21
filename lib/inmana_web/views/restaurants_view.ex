defmodule InmanaWeb.RestaurantsView do
  use InmanaWeb, :view

  def render("created.json", %{restaurant: restaurant}) do
    %{
      message: "Restaurant created successfully",
      restaurant: restaurant
    }
  end
end
