# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{5,6} )
inherit distutils-r1 flag-o-matic

DESCRIPTION="Memory efficient Python objects"
HOMEPAGE="https://github.com/nucleic/atom"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="Clear-BSD"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="test"

RDEPEND=""
DEPEND="
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/nose[${PYTHON_USEDEP}] )"

RESTRICT="test"

python_prepare_all() {
	append-flags -fno-strict-aliasing
	distutils-r1_python_prepare_all
}

python_install_all() {
	distutils-r1_python_install_all
}
