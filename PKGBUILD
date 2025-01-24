# Maintainer: Tu Nombre <tu@email.com>
pkgname=archfetch
pkgver=1.0.0
pkgrel=1
pkgdesc="Un script de bash para mostrar información detallada sobre tu sistema Arch Linux"
arch=('x86_64')
url="https://github.com/itteamlxs/archfetch"
license=('GPL')
depends=('bash' 'procps' 'util-linux' 'lsscpi' 'gnome-settings-daemon')
source=("https://github.com/itteamlxs/archfetch/raw/main/archfetch.sh")
sha256sums=('SKIP')  # Puedes usar el hash correspondiente si deseas verificar la integridad del archivo.

package() {
    install -Dm755 "$srcdir/archfetch.sh" "$pkgdir/usr/bin/archfetch"
    install -Dm644 "$srcdir/LICENSE" "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
