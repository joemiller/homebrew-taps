class Creds < Formula
  desc "Simple encrypted credential management with GPG"
  homepage "https://github.com/joemiller/creds"
  url "https://github.com/joemiller/creds/archive/v0.0.4.tar.gz"
  sha256 "7ce70ac27916dc9ae541ca81ea574a2064eb883adf74ff06b8dc155cda411c80"

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
