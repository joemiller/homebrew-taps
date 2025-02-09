# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Certin < Formula
  desc "Certin is a Go library and CLI for quickly creating keys and certificates for use as test fixtures."
  homepage "https://github.com/joemiller/certin"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/joemiller/certin/releases/download/v0.3.6/certin_darwin_amd64.tar.gz"
      sha256 "d55a302798ab01b37d7412bd83b7a9c18c13ea934bc478d4098511904371dd35"

      def install
        bin.install "certin"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/joemiller/certin/releases/download/v0.3.6/certin_darwin_arm64.tar.gz"
      sha256 "232c306d5042a9ed31ff17492b131e21d36440b8b24833fb1d6a3cbf4ab966db"

      def install
        bin.install "certin"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joemiller/certin/releases/download/v0.3.6/certin_linux_amd64.tar.gz"
        sha256 "4c342a8d3cfecfea53e51b21528a879c79ebfc0d02aadd29321fd61bfe4bcddc"

        def install
          bin.install "certin"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/joemiller/certin/releases/download/v0.3.6/certin_linux_arm64.tar.gz"
        sha256 "8ce014fdd9a791e1928275e5e41ec713dd3985bc4f5c202cd09ab2f5b214d029"

        def install
          bin.install "certin"
        end
      end
    end
  end
end
