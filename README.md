# Archfetch

**Archfetch** es un script de bash para mostrar información detallada sobre tu sistema operativo en Arch Linux.
Este script es especialmente útil para los usuarios de Arch Linux que quieren una manera rápida y sencilla de ver información sobre su sistema.

## Características

- Muestra información detallada sobre el sistema operativo, el kernel, la CPU, la memoria, los discos, las tarjetas gráficas, la red y el entorno de escritorio.
- Ligero y fácil de usar, ideal para terminales o scripts automáticos.
- Compatible con distribuciones basadas en Arch Linux (y otras distribuciones que soporten los comandos estándar de Linux).

## Instalación

Para instalar **Archfetch** en tu sistema Arch Linux, sigue estos pasos:

### Método 1: Instalar desde AUR

1. **Usa `yay` o tu AUR helper preferido** para instalar el paquete:

   ```bash
   yay -S archfetch
   ```

Esto descargará e instalará el paquete directamente desde el AUR.


### Método 2: Compilar e instalar manualmente

Si prefieres compilar el paquete tú mismo, sigue estos pasos:

1. Clona el repositorio de GitHub:

   ```bash
   git clone https://github.com/itteamlxs/archfetch.git
   cd archfetch
   ```

2. Construye e instala el paquete usando makepkg:

   ```bash
   makepkg -si
   ```
Este comando construirá el paquete y lo instalará en tu sistema.

### Uso

Una vez instalado, puedes ejecutar Archfetch desde la terminal con el siguiente comando:

   ```bash
   archfetch
   ```

El script mostrará la siguiente información:

    Sistema operativo: Distribución y versión del kernel.
    CPU: Modelo de la CPU y número de núcleos.
    Memoria: Total y usada de la memoria RAM.
    Discos: Información sobre los discos y particiones.
    GPU: Información sobre las tarjetas gráficas.
    Red: Direcciones IP y interfaces de red.
    Entorno de escritorio: Si tienes un entorno de escritorio gráfico, lo mostrará.

## Desinstalación

Si deseas desinstalar **Archfetch**, puedes hacerlo de las siguientes maneras:
Si lo instalaste desde el AUR

Usa tu AUR helper preferido, como yay, para eliminar Archfetch:

   ```bash
   yay -Rns archfetch
   ```

Si lo instalaste manualmente

Si compilaste e instalaste Archfetch manualmente, puedes eliminarlo de la siguiente manera:

1. Elimina el script de Archfetch:
   
   ```bash
      sudo rm /usr/bin/archfetch
   ```

3. Elimina el directorio donde clonaste el repositorio (si lo deseas):
   
   ```bash
      rm -rf ~/archfetch
   ```

Con esto, habrás eliminado completamente Archfetch de tu sistema.

### Contribuciones

Las contribuciones son muy bienvenidas. Si encuentras un bug, tienes una mejora que proponer o deseas agregar nuevas funcionalidades, por favor:

    Abre un issue describiendo el problema o la mejora.
    Si sabes cómo solucionar el problema, ¡envía un pull request!

### Licencia

Este proyecto está bajo la licencia GPL-3.0. Puedes ver más detalles en el archivo LICENSE.

¡Gracias por usar Archfetch! Si tienes alguna pregunta o sugerencia, no dudes en abrir un issue o enviarnos un mensaje.

