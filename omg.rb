# oh-my-generator formula

class Omg < Formula

	homepage "https://github.com/Julow/oh-my-generator"

	url "https://github.com/Julow/oh-my-generator.git"
	head "https://github.com/Julow/oh-my-generator.git"
	sha256 ""

	version "0.1.4"

	def install
		ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
		system "python", *Language::Python.setup_install_args(libexec)
		bin.install Dir[libexec/"bin/*"]
		bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
	end

	test do
		system "ls", "#{bin}/omg"
	end

end
