# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class YkAttestVerify < Formula
  desc "Validate and enforce policy on YubiKey PIV and OpenPGP attestation certificates"
  homepage "https://github.com/joemiller/yk-attest-verify"
  version "0.2.17"

  on_macos do
    on_intel do
      url "https://github.com/joemiller/yk-attest-verify/releases/download/v0.2.17/yk-attest-verify_Darwin_amd64.tar.gz"
      sha256 "e76c9395f7735ce06e44b80c32f7fef84dfc7baa184ef131b62e431d843b555f"

      def install
        bin.install "yk-attest-verify"
      end
    end
    on_arm do
      url "https://github.com/joemiller/yk-attest-verify/releases/download/v0.2.17/yk-attest-verify_Darwin_arm64.tar.gz"
      sha256 "5217438c81e2b5341b0addc80409761fe0a025c3310ddd9a39abbae06af1b4b5"

      def install
        bin.install "yk-attest-verify"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joemiller/yk-attest-verify/releases/download/v0.2.17/yk-attest-verify_Linux_amd64.tar.gz"
        sha256 "bb40a73052aafc1c8e8e6e670464581336474e122d86ac45b111dcdef8ef9b74"

        def install
          bin.install "yk-attest-verify"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joemiller/yk-attest-verify/releases/download/v0.2.17/yk-attest-verify_Linux_arm64.tar.gz"
        sha256 "a7133c0c5e3c03383e417a7c8fc5d09a12bdbbce676b87589c6964005f314eb6"

        def install
          bin.install "yk-attest-verify"
        end
      end
    end
  end
end
