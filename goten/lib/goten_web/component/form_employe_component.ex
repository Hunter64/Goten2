defmodule GotenWeb.FormEmployeComponent do
  use Phoenix.LiveComponent
  use Phoenix.HTML

  def mount(socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <div class="ml-10 mt-32">
      <form class="w-full max-w-lg" phx-submit="save_new_employe">
        <div class="flex flex-wrap -mx-3 mb-6">
          <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
            <label class="block tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">Primer Nombre</label>
            <input name="first_name" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-400 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-700" id="grid-first-name" type="text" placeholder="Primer Nombre">
          </div>
          <div class="w-full md:w-1/2 px-3">
            <label class="block tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-second-name">Segundo Nombre</label>
            <input name="second_name" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-400 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-700" id="grid-last-name" type="text" placeholder="Segundo Nombre">
          </div>
          <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
            <label class="block tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-last-name-f">Apellido Paterno</label>
            <input name="last_name_f" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-400 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-700" id="grid-first-name" type="text" placeholder="Apellido Paterno">
          </div>
          <div class="w-full md:w-1/2 px-3">
            <label class="block tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-last-name-m">Apellido Materno</label>
            <input name="last_name_m" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-400 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-700" id="grid-last-name" type="text" placeholder="Apellido Materno">
          </div>
          <div class="w-full md:w-1/2 px-3">
            <label class="block tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-birth-date">Fecha de Nacimiento</label>
            <input name="birth_date" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-400 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-700" id="grid-last-name" type="date">
          </div>
          <div class="w-full md:w-1/2 px-3">
            <button type="submit" class="mt-6 w-full py-3 bg-teal-500 text-white hover:bg-teal-400 items-center inline-flex font-bold rounded shadow focus:shadow-outline focus:outline-none rounded">
              <svg aria-hidden="true" focusable="false" data-prefix="fad" data-icon="save" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" class="h-4 w-4 mr-2 ml-auto">
                <g class="fa-group">
                  <path fill="currentColor" d="M288 352a64 64 0 1 1-64-64 64 64 0 0 1 64 64z" class="text-white"></path>
                  <path fill="currentColor" d="M433.94 129.94l-83.88-83.88A48 48 0 0 0 316.12 32H48A48 48 0 0 0 0 80v352a48 48 0 0 0 48 48h352a48 48 0 0 0 48-48V163.88a48 48 0 0 0-14.06-33.94zM224 416a64 64 0 1 1 64-64 64 64 0 0 1-64 64zm96-204a12 12 0 0 1-12 12H76a12 12 0 0 1-12-12V108a12 12 0 0 1 12-12h228.52a12 12 0 0 1 8.48 3.52l3.48 3.48a12 12 0 0 1 3.52 8.48z" class="text-white"></path>
                </g>
              </svg>
              <label class="cursor-pointer mr-auto text-white">Guardar</label>
            </button>
          </div>
        </div>
      </form>
    <div>
    """
  end
end
