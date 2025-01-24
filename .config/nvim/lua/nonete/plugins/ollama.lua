return {
	"Nonetss/gen-ollama.nvim",
	opts = {
		model = "deepseek-coder-v2:latest", -- El modelo predeterminado a utilizar.
		thinking_model = "deepseek-r1:14b", -- Modelo por defecto para :TGen
		quit_map = "q", -- establecer el mapa de tecla para cerrar la ventana de respuesta
		retry_map = "<c-r>", -- establecer el mapa de tecla para reenviar el prompt actual
		accept_map = "<c-cr>", -- establecer el mapa de tecla para reemplazar la selección anterior con el último resultado
		host = "localhost", -- El host que ejecuta el servicio Ollama.
		port = "11434", -- El puerto en el que el servicio Ollama está escuchando.
		display_mode = "split", -- El modo de visualización. Puede ser "float" o "split" o "horizontal-split".
		show_prompt = true, -- Muestra el prompt enviado a Ollama. Puede ser true (3 líneas) o "full".
		show_model = false, -- Muestra qué modelo estás utilizando al principio de tu sesión de chat.
		no_auto_close = false, -- Nunca se cierra automáticamente la ventana.
		file = false, -- Escribe la carga útil en un archivo temporal para mantener el comando corto.
		hidden = false, -- Oculta la ventana de generación (si es true, establecerá implícitamente `prompt.replace = true`), requiere Neovim >= 0.10
		language = "es",
		init = function(options)
			pcall(io.popen, "ollama serve > /dev/null 2>&1 &")
		end,
		-- Función para inicializar Ollama
		command = function(options)
			local body = { model = options.model, stream = true }
			return "curl --silent --no-buffer -X POST http://"
				.. options.host
				.. ":"
				.. options.port
				.. "/api/chat -d $body"
		end,
		-- El comando para el servicio Ollama. Puedes usar marcadores de posición $prompt, $model y $body (escapados de shell).
		-- Esto también puede ser una cadena de comandos.
		-- El comando ejecutado debe devolver un objeto JSON con { response, context }
		-- (la propiedad context es opcional).
		-- list_models = '<omitted lua function>', -- Recupera una lista de nombres de modelo
		result_filetype = "markdown", -- Configura el tipo de archivo del búfer de resultado
		debug = false, -- Imprime errores y el comando que se ejecuta.
	},
	vim.keymap.set({ "n", "v" }, "<leader>ol", ":Gen<CR>"),
	vim.keymap.set({ "n", "v" }, "<leader>ot", ":TGen<CR>"),
}
