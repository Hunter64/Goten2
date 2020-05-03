defmodule GotenWeb.EmployesController do
  use GotenWeb, :controller
  alias Phoenix.LiveView

  def index(conn, _params) do
    LiveView.Controller.live_render(conn, GotenWeb.EmployesLiveView, session: %{})
  end
end
