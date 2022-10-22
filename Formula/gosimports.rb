# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosimports < Formula
  desc "Command gosimports updates your Go import lines, adding missing ones, removing unreferenced ones, and removing redundant blank lines."
  homepage "https://pkg.go.dev/github.com/rinchsan/gosimports/cmd/gosimports"
  version "0.3.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.3.4/gosimports_0.3.4_darwin_amd64.tar.gz"
      sha256 "d0f2d5a4e6e89d671f8c91e026e08237f2fad1bc6c677a62a07288545a98ae6b"

      def install
        bin.install "gosimports"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.3.4/gosimports_0.3.4_darwin_arm64.tar.gz"
      sha256 "11c82070315f5bbb43af87a54b7686bbda346a43c39c8fb38b10210b497ab3e9"

      def install
        bin.install "gosimports"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.3.4/gosimports_0.3.4_linux_amd64.tar.gz"
      sha256 "163dd01b29f7c90b50a7a7ab974444b3020ddb6deaa1544117f6c03275ec6b51"

      def install
        bin.install "gosimports"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.3.4/gosimports_0.3.4_linux_arm64.tar.gz"
      sha256 "72282e589e0cf42bd3998764194d9e4ed1003fa8de617d1eeb65a38c1bcb4a01"

      def install
        bin.install "gosimports"
      end
    end
  end

  test do
    system "#{bin}/gosimports --help"
  end
end
