defmodule GotenWeb.UserView do
  use GotenWeb, :view
end

defmodule GotenWeb.UserLiveView do
  use Phoenix.LiveView

  def render(assigns) do
    Phoenix.View.render(GotenWeb.UserView, "index.html", assigns)
  end

  # def mount(_params, _sessions, socket) do
  #   {:pk, socket}
  # end
end
