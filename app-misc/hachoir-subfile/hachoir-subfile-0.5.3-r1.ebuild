# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Find subfile in any binary stream"
HOMEPAGE="https://web.archive.org/web/20170502140945/https://bitbucket.org/haypo/hachoir/wiki/hachoir-subfile https://pypi.org/project/hachoir-subfile"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~ppc ~x86"
IUSE=""

RDEPEND=">=dev-python/hachoir-core-1.1[${PYTHON_USEDEP}]
	>=dev-python/hachoir-parser-1.1[${PYTHON_USEDEP}]
	>=dev-python/hachoir-regex-1.0.1[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]"

python_configure_all() {
	mydistutilsargs=(
		--setuptools
	)
}
