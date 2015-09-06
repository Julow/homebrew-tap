# J formula

class J < Formula

	homepage "https://github.com/Julow/J"

	url "https://github.com/Julow/J.git"
	head "https://github.com/Julow/J.git"
	sha256 ""

	version "0.1.3"

	def install
		system "make", "-j1"
		bin.install "j"
	end

end
