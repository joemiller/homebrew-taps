class VaultGpgTokenHelper < Formula
  desc "A @hashicorp Vault token helper for GPG (+ yubikey)"
  homepage "https://github.com/joemiller/vault-gpg-token-helper"
  url "https://github.com/joemiller/vault-gpg-token-helper/releases/download/v0.1.1/vault-gpg-token-helper_0.1.1_darwin_amd64.tar.gz"
  version "0.1.1"
  sha256 "b18580d6da4ca982f3d88ff2bb16da482036e862d4c761e96c555d4061ee34f9"

  def install
    bin.install "vault-gpg-token-helper"
  end

  def caveats; <<~EOS
    You need to set a path to the token helper in your ~/.vault file.
    Run the following to create the ~/.vault file:
    
    echo "token_helper = \"$(brew --prefix joemiller/taps/vault-gpg-token-helper)/bin/vault-gpg-token-helper\"" > ~/.vault
  EOS
  end
end
