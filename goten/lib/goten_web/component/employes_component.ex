defmodule GotenWeb.EmployesComponent do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  def mount(socket) do
    {:ok, assign(socket, employe_id: 0, new?: false, edit?: false)}
  end

  def update(_attrs, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
      <div id="employes" class="ml-10 mt-32">
        <div class="w-1/2 px-2 mt-2">
          <button phx-click="open_new_employe" phx-target="#employes" class="py-2 bg-teal-500 hover:bg-teal-400 text-white items-center inline-flex font-bold rounded text-sm w-32">
            <svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="plus" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="h-4 w-4 mr-2 ml-auto">
              <path fill="currentColor" d="M416 208H272V64c0-17.67-14.33-32-32-32h-32c-17.67 0-32 14.33-32 32v144H32c-17.67 0-32 14.33-32 32v32c0 17.67 14.33 32 32 32h144v144c0 17.67 14.33 32 32 32h32c17.67 0 32-14.33 32-32V304h144c17.67 0 32-14.33 32-32v-32c0-17.67-14.33-32-32-32z" class="text-white"></path>
            </svg>
            <label class="cursor-pointer mr-auto text-white">Nuevox</label>
          </button>
        </div>
      </div>

      <%= if @new?, do: live_component(@socket, GotenWeb.FormEmployeComponent, id: "employe", new?: true, edit?: false) %>
      <%= if @edit?, do: live_component(@socket, GotenWeb.FormEmployeComponent, id: @employe_id, new?: false, edit?: true) %>
    """
  end

  def handle_event("open_new_employe", _params, socket) do
    socket |> IO.inspect(label: " ------------------------------------> SOCKET OPEN NEW EMPLOYE")
    {:noreply, assign(socket, new?: true, edit?: false)}
  end

  def handle_event("save_new_employe", params, socket) do
    params
    |> IO.inspect(label: " PARAMS ----------------------------------------------------------> ")

    socket
    |> IO.inspect(label: " SOCKET ----------------------------------------------------------> ")

    {:noreply, socket}
  end
end
