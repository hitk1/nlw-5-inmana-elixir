defmodule InmanaWeb.SuppliesController do
  use InmanaWeb, :controller

  alias Inmana.Supply
  alias Inmana.Supplies.Create, as: CreateSupply
  alias InmanaWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Supply{} = supply} <- CreateSupply.call(params) do
      conn
      |> put_status(:created)
      |> render("created.json", supply: supply)
    end
  end
end
