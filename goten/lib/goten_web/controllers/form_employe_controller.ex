defmodule GotenWeb.FormEmployeController do
  use GotenWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    LiveView.Controller.live_render(conn, GotenWeb.FormEmployeLiveView, session: %{})
  end
end
