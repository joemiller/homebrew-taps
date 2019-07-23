# This file was generated by GoReleaser. DO NOT EDIT.
class VaultTokenHelper < Formula
  desc "Cross-platform @hashicorp Vault token helper"
  homepage "https://github.com/joemiller/vault-token-helper"
  version "0.2.0"
  bottle :unneeded

  if OS.mac?
  elsif OS.linux?
    url "https://github.com/joemiller/vault-token-helper/releases/download/v0.2.0/vault-token-helper_0.2.0_linux_amd64.tar.gz"
    sha256 "42f7a800b68f6ebf6e3d31ba08bda2b300edd269caeadb61e9996758549a60c1"
  end
  
  depends_on "vault"

  def install
    bin.install "vault-token-helper"
  end

  def caveats; <<~EOS
    Run this to create the ~/.vault file. This will instruct vault to use the token helper:
    
      vault-token-helper enable
  EOS
  end
end
