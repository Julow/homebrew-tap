# logcat formula

class Logcat < Formula

	homepage "https://github.com/Julow/logcat.py"

	url "https://github.com/Julow/logcat.py.git"
	head "https://github.com/Julow/logcat.py.git"
	sha256 ""

	version "0.1.0"

	def install
		bin.install "logcat.py" => "logcat"
	end

	test do
		system "ls", "#{bin}/logcat"
	end

end
