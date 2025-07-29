EAPI=8

SLOT="0"
SRC_URI="https://github.com/julian-klode/triehash/archive/refs/tags/debian/0.3-3.tar.gz"
S="${WORKDIR}/triehash-debian-0.3-3"

src_install() {
	mv triehash.pl triehash
	chmod +x triehash
	dobin triehash
}
