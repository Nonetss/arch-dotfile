# nvim-config

Mi configuración personal de nvim 🐒

## Keymaps:

### Español:

#### General

| Keymap       | Modo(s)  | Descripción                                 |
| ------------ | -------- | ------------------------------------------- |
| `jk`         | Insertar | Salir del modo insertar con `jk`            |
| `<leader>nh` | Normal   | Limpiar resaltado de búsqueda               |
| `<leader>+`  | Normal   | Incrementar número                          |
| `<leader>-`  | Normal   | Decrementar número                          |
| `<leader>sv` | Normal   | Dividir ventana verticalmente               |
| `<leader>sh` | Normal   | Dividir ventana horizontalmente             |
| `<leader>se` | Normal   | Hacer las divisiones de igual tamaño        |
| `<leader>sx` | Normal   | Cerrar la división actual                   |
| `<leader>to` | Normal   | Abrir nueva pestaña                         |
| `<leader>tx` | Normal   | Cerrar la pestaña actual                    |
| `<leader>tn` | Normal   | Ir a la siguiente pestaña                   |
| `<leader>tp` | Normal   | Ir a la pestaña anterior                    |
| `<leader>tf` | Normal   | Abrir el buffer actual en una nueva pestaña |
| `<C-s>`      | Normal   | Guardar archivo                             |
| `<C-s>`      | Insertar | Guardar archivo y volver al modo insertar   |

#### Gestor de Sesiones

| Keymap       | Modo(s) | Descripción                                         |
| ------------ | ------- | --------------------------------------------------- |
| `<leader>wr` | Normal  | Restaurar sesión para el directorio actual          |
| `<leader>ws` | Normal  | Guardar sesión para el directorio de trabajo actual |

#### Conform

| Keymap       | Modo(s)        | Descripción                                |
| ------------ | -------------- | ------------------------------------------ |
| `<leader>mp` | Normal, Visual | Formatear archivo o rango (en modo visual) |

#### Linting

| Keymap       | Modo(s) | Descripción                           |
| ------------ | ------- | ------------------------------------- |
| `<leader>ll` | Normal  | Ejecutar linting en el archivo actual |

#### NvimTree

| Keymap       | Modo(s) | Descripción                                          |
| ------------ | ------- | ---------------------------------------------------- |
| `<leader>ee` | Normal  | Alternar explorador de archivos                      |
| `<leader>ef` | Normal  | Alternar explorador de archivos en el archivo actual |
| `<leader>ec` | Normal  | Colapsar explorador de archivos                      |
| `<leader>er` | Normal  | Actualizar explorador de archivos                    |

#### Trouble

| Keymap       | Modo(s) | Descripción                                        |
| ------------ | ------- | -------------------------------------------------- |
| `<leader>xx` | Normal  | Abrir/cerrar lista de problemas                    |
| `<leader>xw` | Normal  | Abrir lista de diagnósticos del espacio de trabajo |
| `<leader>xd` | Normal  | Abrir lista de diagnósticos del documento          |
| `<leader>xq` | Normal  | Abrir lista de quickfix                            |
| `<leader>xl` | Normal  | Abrir lista de localizaciones                      |
| `<leader>xt` | Normal  | Abrir lista de todos en problemas                  |

#### Maximizer

| Keymap       | Modo(s) | Descripción                      |
| ------------ | ------- | -------------------------------- |
| `<leader>sm` | Normal  | Maximizar/minimizar una división |

#### Telescope/LSP

| Keymap      | Modo(s) | Descripción                          |
| ----------- | ------- | ------------------------------------ |
| `gR`        | Normal  | Mostrar referencias de LSP           |
| `gd`        | Normal  | Mostrar definiciones de LSP          |
| `gi`        | Normal  | Mostrar implementaciones de LSP      |
| `gt`        | Normal  | Mostrar definiciones de tipo de LSP  |
| `<leader>D` | Normal  | Mostrar diagnósticos para el archivo |

#### LSP

| Keymap       | Modo(s)        | Descripción                                           |
| ------------ | -------------- | ----------------------------------------------------- |
| `gD`         | Normal         | Ir a la declaración                                   |
| `<leader>ca` | Normal, Visual | Ver acciones de código disponibles                    |
| `<leader>rn` | Normal         | Renombrar inteligentemente                            |
| `<leader>d`  | Normal         | Mostrar diagnósticos para la línea                    |
| `[d`         | Normal         | Ir al diagnóstico anterior                            |
| `]d`         | Normal         | Ir al siguiente diagnóstico                           |
| `K`          | Normal         | Mostrar documentación para lo que está bajo el cursor |
| `<leader>rs` | Normal         | Reiniciar LSP                                         |

#### Completion

| Keymap      | Modo(s)  | Descripción                           |
| ----------- | -------- | ------------------------------------- |
| `<C-j>`     | Insertar | Sugerencia anterior                   |
| `<C-k>`     | Insertar | Siguiente sugerencia                  |
| `<C-b>`     | Insertar | Desplazar documentos hacia arriba     |
| `<C-f>`     | Insertar | Desplazar documentos hacia abajo      |
| `<C-Space>` | Insertar | Mostrar sugerencias de autocompletado |
| `<C-e>`     | Insertar | Cerrar ventana de autocompletado      |
| `<CR>`      | Insertar | Confirmar autocompletado              |

#### Snippet

| Keymap    | Modo(s)  | Descripción                        |
| --------- | -------- | ---------------------------------- |
| `<Tab>`   | Insertar | Expandir o saltar en el fragmento  |
| `<S-Tab>` | Insertar | Saltar hacia atrás en el fragmento |

#### Ollama:

| Keymap        | Modo(s) | Descripción                                                        |
| ------------- | ------- | ------------------------------------------------------------------ |
| `<leader> oo` | Normal  | Te deja elegir entre los diferentes promts que introducir a Ollama |
| `<leader> oG` | Normal  | Hace que Ollama genere codigo                                      |

### English:

#### General

| Keymap       | Mode(s) | Description                          |
| ------------ | ------- | ------------------------------------ |
| `jk`         | Insert  | Exit insert mode with `jk`           |
| `<leader>nh` | Normal  | Clear search highlights              |
| `<leader>+`  | Normal  | Increment number                     |
| `<leader>-`  | Normal  | Decrement number                     |
| `<leader>sv` | Normal  | Split window vertically              |
| `<leader>sh` | Normal  | Split window horizontally            |
| `<leader>se` | Normal  | Make splits equal size               |
| `<leader>sx` | Normal  | Close current split                  |
| `<leader>to` | Normal  | Open new tab                         |
| `<leader>tx` | Normal  | Close current tab                    |
| `<leader>tn` | Normal  | Go to next tab                       |
| `<leader>tp` | Normal  | Go to previous tab                   |
| `<leader>tf` | Normal  | Open current buffer in new tab       |
| `<C-s>`      | Normal  | Save file                            |
| `<C-s>`      | Insert  | Save file and go back to insert mode |

#### Session Manager

| Keymap       | Mode(s) | Description                                |
| ------------ | ------- | ------------------------------------------ |
| `<leader>wr` | Normal  | Restore session for cwd                    |
| `<leader>ws` | Normal  | Save session for current working directory |

#### Conform

| Keymap       | Mode(s)        | Description                           |
| ------------ | -------------- | ------------------------------------- |
| `<leader>mp` | Normal, Visual | Format file or range (in visual mode) |

#### Linting

| Keymap       | Mode(s) | Description                      |
| ------------ | ------- | -------------------------------- |
| `<leader>ll` | Normal  | Trigger linting for current file |

#### NvimTree

| Keymap       | Mode(s) | Description                          |
| ------------ | ------- | ------------------------------------ |
| `<leader>ee` | Normal  | Toggle file explorer                 |
| `<leader>ef` | Normal  | Toggle file explorer on current file |
| `<leader>ec` | Normal  | Collapse file explorer               |
| `<leader>er` | Normal  | Refresh file explorer                |

#### Trouble

| Keymap       | Mode(s) | Description                        |
| ------------ | ------- | ---------------------------------- |
| `<leader>xx` | Normal  | Open/close trouble list            |
| `<leader>xw` | Normal  | Open trouble workspace diagnostics |
| `<leader>xd` | Normal  | Open trouble document diagnostics  |
| `<leader>xq` | Normal  | Open trouble quickfix list         |
| `<leader>xl` | Normal  | Open trouble location list         |
| `<leader>xt` | Normal  | Open todos in trouble              |

#### Maximizer

| Keymap       | Mode(s) | Description               |
| ------------ | ------- | ------------------------- |
| `<leader>sm` | Normal  | Maximize/minimize a split |

#### Telescope/LSP

| Keymap      | Mode(s) | Description               |
| ----------- | ------- | ------------------------- |
| `gR`        | Normal  | Show LSP references       |
| `gd`        | Normal  | Show LSP definitions      |
| `gi`        | Normal  | Show LSP implementations  |
| `gt`        | Normal  | Show LSP type definitions |
| `<leader>D` | Normal  | Show diagnostics for file |

#### LSP

| Keymap       | Mode(s)        | Description                                 |
| ------------ | -------------- | ------------------------------------------- |
| `gD`         | Normal         | Go to declaration                           |
| `<leader>ca` | Normal, Visual | See available code actions                  |
| `<leader>rn` | Normal         | Smart rename                                |
| `<leader>d`  | Normal         | Show diagnostics for line                   |
| `[d`         | Normal         | Go to previous diagnostic                   |
| `]d`         | Normal         | Go to next diagnostic                       |
| `K`          | Normal         | Show documentation for what is under cursor |
| `<leader>rs` | Normal         | Restart LSP                                 |

#### Completion

| Keymap      | Mode(s) | Description                 |
| ----------- | ------- | --------------------------- |
| `<C-j>`     | Insert  | Previous suggestion         |
| `<C-k>`     | Insert  | Next suggestion             |
| `<C-b>`     | Insert  | Scroll docs up              |
| `<C-f>`     | Insert  | Scroll docs down            |
| `<C-Space>` | Insert  | Show completion suggestions |
| `<C-e>`     | Insert  | Close completion window     |
| `<CR>`      | Insert  | Confirm completion          |

#### Snippet

| Keymap    | Mode(s) | Description               |
| --------- | ------- | ------------------------- |
| `<Tab>`   | Insert  | Expand or jump in snippet |
| `<S-Tab>` | Insert  | Jump backward in snippet  |

#### Ollama:

| Keymap        | Mode(s) | Description                                                          |
| ------------- | ------- | -------------------------------------------------------------------- |
| `<leader> oo` | Normal  | Allows you to select from different prompts that introduce in Ollama |
| `<leader> oG` | Normal  | Makes Ollama generate code                                           |

## Referencias:

La configuración inicial esta basada en la configuración del siguiente video: [https://www.youtube.com/watch?v=6pAG3BHurdM&t=3583s]()
