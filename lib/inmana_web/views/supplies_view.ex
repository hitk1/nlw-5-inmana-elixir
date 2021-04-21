defmodule InmanaWeb.SuppliesView do
  use InmanaWeb, :view

  def render("created.json", %{supply: supply}) do
    %{
      message: "Supply created successfully",
      supply: supply
    }
  end
end
