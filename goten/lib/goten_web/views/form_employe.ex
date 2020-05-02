defmodule GotenWeb.FormEmployeView do
  use GotenWeb, :view
end

defmodule GotenWeb.FormEmployeLiveView do
  use Phoenix.LiveView

  def render(assigns) do
    Phoenix.View.render(GotenWeb.FormEmployeView, "index.html", assigns)
  end

end
