class Creds < Formula
  desc 'Simple encrypted credential management with GPG'
  homepage 'https://github.com/joemiller/creds'
  url 'https://github.com/joemiller/creds/archive/v0.1.0.tar.gz'
  sha256 'ce322fd63296b4ef045b777d1b42ce25290ced053741aadaf8bb6979685c451a'

  head 'https://github.com/joemiller/creds.git'

  bottle :unneeded

  def install
    bin.install 'creds'
    zsh_completion.install 'completions/zsh/_creds.sh'
    bash_completion.install 'completions/bash/_creds.sh'
  end

  test do
    system "#{bin}/creds", '--version'
  end
end
