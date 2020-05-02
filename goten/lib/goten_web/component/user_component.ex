defmodule GotenWeb.UserComponent do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  #alias Goten.Accounts, as: Users

  def mount(socket) do
    {:ok, socket}
  end

  # def update(attrs, socket) do
  #   {:ok, socket}
  # end

  def render(assigns) do
    ~L"""
    <div>
      USERS HERE
    <div>
    """
  end


end
