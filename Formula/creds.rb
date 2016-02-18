class Creds < Formula
  desc "Simple encrypted credential file management with GPG"
  homepage "https://github.com/joemiller/creds"
  url "https://github.com/joemiller/creds/archive/v0.0.3.tar.gz"
  sha256 "f7cf9b3c9bfad516fc01004e6791a20f899cf58502623fc0eb353b6433fd07f5"

	head "https://github.com/joemiller/creds.git"

  bottle :unneeded

  def install
    bin.install "creds"
		zsh_completion.install "completions/zsh/_creds.sh"
		bash_completion.install "completions/bash/_creds.sh"
  end

  test do
    system "#{bin}/creds", "--version"
  end
end
