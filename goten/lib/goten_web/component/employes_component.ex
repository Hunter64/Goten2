defmodule GotenWeb.EmployesComponent do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  def mount(socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
      <div class="ml-10 mt-32">
        LIST EMPLOYES
      </div>
    """
  end

end
