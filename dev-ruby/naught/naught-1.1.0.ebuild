# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
USE_RUBY="ruby23 ruby24 ruby25"

RUBY_FAKEGEM_RECIPE_TEST="rspec3"

RUBY_FAKEGEM_RECIPE_DOC="rdoc"
RUBY_FAKEGEM_EXTRADOC="Changelog.md README.markdown"

inherit ruby-fakegem

DESCRIPTION="A toolkit for building Null Objects in Ruby"
HOMEPAGE="https://github.com/avdi/naught"

LICENSE="MIT"
SLOT="5"
KEYWORDS="~amd64"
IUSE=""

all_ruby_prepare() {
	sed -i -e '/simplecov/,/^end/ s:^:#:' spec/spec_helper.rb || die
}
