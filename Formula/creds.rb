class Creds < Formula
  desc "Simple encrypted credential file management with GPG"
  homepage "https://github.com/joemiller/creds"
  url "//github.com/joemiller/creds/archive/master.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  bottle :unneeded

  def install
    bin.install "creds"
		zsh_completion "completions/zsh/_creds.sh"
		bash_completion "completions/bash/_creds.sh"
  end

  test do
    system "#{bin}/creds", "--version"
  end
end
