defmodule GotenWeb.FormEmployeComponent do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  def mount(socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <div class="mt-24">
      Form Employe Here
    <div>
    """
  end

end
