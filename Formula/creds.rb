class Creds < Formula
  desc 'Simple encrypted credential management with GPG'
  homepage 'https://github.com/joemiller/creds'
  url 'https://github.com/joemiller/creds/archive/v0.1.0.tar.gz'
  sha256 'd358803381182a23625b45c450dcc3adf01d6606521f0ccea70dd4650d79bf4d'

  head 'https://github.com/joemiller/creds.git'

  def install
    bin.install 'creds'
    zsh_completion.install 'completions/zsh/_creds.sh'
    bash_completion.install 'completions/bash/_creds.sh'
  end

  test do
    system "#{bin}/creds", '--version'
  end
end
