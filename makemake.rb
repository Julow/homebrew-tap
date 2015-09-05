# makemake formula

class Makemake < Formula

	homepage "https://github.com/Julow/makemake"

	url "https://github.com/Julow/makemake.git"
	head "https://github.com/Julow/makemake.git"
	sha256 ""

	version "2.0.3"

	def install
		bin.install "makemake.py" => "makemake"
	end

	test do
		system "#{bin}/makemake", "--test"
		assert File.exist? "Makefile"
	end

end
