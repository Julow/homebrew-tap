# makemake formula

class Makemake < Formula

	homepage "https://github.com/Julow/makemake"

	url "https://github.com/Julow/makemake.git"
	head "https://github.com/Julow/makemake.git"
	sha256 ""

	version "3.2.0"

	def install
		bin.install "old/makemake.py" => "makemake"
		ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
		system "python", *Language::Python.setup_install_args(libexec)
		bin.install Dir[libexec/"bin/*"]
		bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
	end

	test do
		system "#{bin}/makemake", "--test"
		assert File.exist? "Makefile"
	end

end
