# This file was generated by GoReleaser. DO NOT EDIT.
class YkAttestVerify < Formula
  desc "yk-attest-verify is TODO"
  homepage "https://github.com/joemiller/yk-attest-verify"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/joemiller/yk-attest-verify/releases/download/v0.0.1/yk-attest-verify_darwin_amd64.tar.gz"
    sha256 "c21472194681dc5f62d2d788c4d3e7ff033f5b58cb072fa71a26d138bb6074cd"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/joemiller/yk-attest-verify/releases/download/v0.0.1/yk-attest-verify_linux_amd64.tar.gz"
      sha256 "4e3fb7e4a7d83a6a818d06a306b2e7527834755e746e7f21f2fee80b4a523b05"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joemiller/yk-attest-verify/releases/download/v0.0.1/yk-attest-verify_linux_arm64.tar.gz"
        sha256 "1db6fae32125ce8db6bb4a1958cbdafbfbd75ee43139c47e9a642007b9ca0013"
      else
      end
    end
  end

  def install
    bin.install "yk-attest-verify"
  end
end
