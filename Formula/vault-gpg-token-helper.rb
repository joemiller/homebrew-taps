class VaultGpgTokenHelper < Formula
  desc "A @hashicorp Vault token helper for GPG (+ yubikey)"
  homepage "https://github.com/joemiller/vault-gpg-token-helper"
  url "https://github.com/joemiller/vault-gpg-token-helper/releases/download/v0.1.3/vault-gpg-token-helper_0.1.3_darwin_amd64.tar.gz"
  version "0.1.3"
  sha256 "5e5f068834c3633e6e16f982efb79658bf734610ab5b5cbf0f59c599045f13f8"

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
