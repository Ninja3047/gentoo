# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( pypy{,3} python{2_7,3_{4,5,6}} )

inherit distutils-r1

DESCRIPTION="Exif manipulation with pure Python"
HOMEPAGE="https://github.com/hMatoba/Piexif
	https://pypi.org/project/piexif"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.zip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	app-arch/unzip
	test? ( dev-python/pillow )"

python_test() {
	"${PYTHON}" setup.py test
}
