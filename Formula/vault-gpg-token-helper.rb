class VaultGpgTokenHelper < Formula
  desc "A @hashicorp Vault token helper for GPG (+ yubikey)"
  homepage "https://github.com/joemiller/vault-gpg-token-helper"
  url "https://github.com/joemiller/vault-gpg-token-helper/releases/download/v0.0.2/vault-gpg-token-helper_0.0.2_darwin_amd64.tar.gz"
  version "0.0.2"
  sha256 "8e4ad67b4fb8ddcd0e00958d51711fe9b43ba3b2c80d543bb65447cfd1b5568a"

  def install
    bin.install "vault-gpg-token-helper"
  end
end
