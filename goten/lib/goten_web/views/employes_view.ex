defmodule GotenWeb.EmployesView do
  use GotenWeb, :view
end

defmodule GotenWeb.EmployesLiveView do
  use Phoenix.LiveView

  def render(assigns) do
    Phoenix.View.render(GotenWeb.EmployesView, "index.html", assigns)
  end

end
