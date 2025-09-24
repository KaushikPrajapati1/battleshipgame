defmodule BattleshipgameWeb.PageController do
  use BattleshipgameWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
