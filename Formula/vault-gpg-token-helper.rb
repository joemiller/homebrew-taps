class VaultGpgTokenHelper < Formula
  desc "A @hashicorp Vault token helper for GPG (+ yubikey)"
  homepage "https://github.com/joemiller/vault-gpg-token-helper"
  url "https://github.com/joemiller/vault-gpg-token-helper/releases/download/v0.1.0/vault-gpg-token-helper_0.1.0_darwin_amd64.tar.gz"
  version "0.1.0"
  sha256 "4dc486ed19fe06161d4e949d1632e7741ca37bc15bb7f727e8f8fd1f3bb2b69f"

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
