class VaultGpgTokenHelper < Formula
  desc "A @hashicorp Vault token helper for GPG (+ yubikey)"
  homepage "https://github.com/joemiller/vault-gpg-token-helper"
  url "https://github.com/joemiller/vault-gpg-token-helper/releases/download/v0.1.7/vault-gpg-token-helper_0.1.7_darwin_amd64.tar.gz"
  version "0.1.7"
  sha256 "60e5f1756ee2568000fcaa40cc180def33a624767f74954dfd5b48ba004c2008"

  def install
    bin.install "vault-gpg-token-helper"
  end

  def caveats; <<~EOS
    You need to set a path to the token helper in your ~/.vault file.
    Run the following to create the ~/.vault file:
    
    echo "token_helper = \\"$(brew --prefix joemiller/taps/vault-gpg-token-helper)/bin/vault-gpg-token-helper\\"" > ~/.vault
  EOS
  end
end
