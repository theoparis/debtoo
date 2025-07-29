EAPI=8

inherit cmake

SLOT="0"
IUSE=""
BDEPEND="sys-apps/triehash"
DEPEND="
	sys-libs/db
	app-arch/lz4
	dev-libs/xxhash
	app-arch/dpkg
"
SRC_URI="https://salsa.debian.org/apt-team/apt/-/archive/3.1.3/apt-3.1.3.tar.gz"
KEYWORDS="~arm64 ~amd64"

src_configure() {
	local mycmakeargs=(
		-DWITH_DOC=OFF
		-DREQUIRE_MERGED_USR=OFF
		-DWITH_TESTS=OFF
	)

	cmake_src_configure
}
