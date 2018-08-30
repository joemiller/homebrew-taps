class VaultGpgTokenHelper < Formula
  desc "A @hashicorp Vault token helper for GPG (+ yubikey)"
  homepage "https://github.com/joemiller/vault-gpg-token-helper"
  url "https://github.com/joemiller/vault-gpg-token-helper/releases/download/v0.1.4/vault-gpg-token-helper_0.1.4_darwin_amd64.tar.gz"
  version "0.1.4"
  sha256 "94430aba18d9fa30351d334bb90ef8c4f1d3f7bffd37817f6b4172ddfe88b51d"

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
