class VaultGpgTokenHelper < Formula
  desc "A @hashicorp Vault token helper for GPG (+ yubikey)"
  homepage "https://github.com/joemiller/vault-gpg-token-helper"
  url "https://github.com/joemiller/vault-gpg-token-helper/releases/download/v0.1.6/vault-gpg-token-helper_0.1.6_darwin_amd64.tar.gz"
  version "0.1.6"
  sha256 "9c87ba7c4a0185bcb1a63e0e2501169d00bf501dae4da9a20a34dd58ccda0939"

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
