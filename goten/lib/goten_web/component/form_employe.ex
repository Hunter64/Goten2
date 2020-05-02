defmodule GotenWeb.FormEmployeComponent do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  def mount(socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <div class="ml-10 mt-32">
      <form class="w-full max-w-lg">
        <div class="flex flex-wrap -mx-3 mb-6">
          <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
            <label class="block tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">Primer Nombre</label>
            <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-400 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-700" id="grid-first-name" type="text" placeholder="Primer Nombre">
          </div>
          <div class="w-full md:w-1/2 px-3">
            <label class="block tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-last-name">Segundo Nombre</label>
            <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-400 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-700" id="grid-last-name" type="text" placeholder="Segundo Nombre">
          </div>
          <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
            <label class="block tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">Apellido Paterno</label>
            <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-400 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-700" id="grid-first-name" type="text" placeholder="Apellido Paterno">
          </div>
          <div class="w-full md:w-1/2 px-3">
            <label class="block tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-last-name">Apellido Materno</label>
            <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-400 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-700" id="grid-last-name" type="text" placeholder="Apellido Materno">
          </div>
          <div class="w-full md:w-1/2 px-3">
            <label class="block tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-last-name">Fecha de Nacimiento</label>
            <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-400 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-700" id="grid-last-name" type="date">
          </div>
        </div>
      </form>
    <div>
    """
  end
end
