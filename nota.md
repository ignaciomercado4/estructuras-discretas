# Instalar Haskell

## Linux

Ejecutar el siguiente comando en la terminal:

```curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh```

## Windows

Ejecutar el siguiente comando en PowerShell:

```Set-ExecutionPolicy Bypass -Scope Process -Force; `[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `iex (New-Object System.Net.WebClient).DownloadString("https://get-ghcup.haskell.org")```

Durante la instalación, aceptar las opciones que se soliciten.

# Uso de GHCi
Para iniciar el intérprete interactivo de Haskell:

```ghci```

Para cargar un archivo .hs, ubicarse en el directorio correspondiente y ejecutar:

```ghci nombre_script.hs```

# Configuración (opcional)

Para desactivar el warning por uso de tabs, agregar la siguiente línea al archivo .ghci:
```:set -Wno-tabs```

Ubicación del archivo:


- Linux: /home/tu_usuario/.ghci


- Windows: C:\Users\tu_usuario\.ghci

Si el archivo no existe, puede crearse manualmente.