# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosimports < Formula
  desc "Command gosimports updates your Go import lines, adding missing ones, removing unreferenced ones, and removing redundant blank lines."
  homepage "https://pkg.go.dev/github.com/rinchsan/gosimports/cmd/gosimports"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.3/gosimports_0.2.3_darwin_amd64.tar.gz"
      sha256 "656dbe88481c724a97c2c3b66e5040b8bd1dd112d4cc819bf8ba023e500a4539"

      def install
        bin.install "gosimports"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.3/gosimports_0.2.3_darwin_arm64.tar.gz"
      sha256 "843a2747164c03e33a94848adf5a3e7223520744241b62a42d04d89e1a5b51e4"

      def install
        bin.install "gosimports"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.3/gosimports_0.2.3_linux_arm64.tar.gz"
      sha256 "4985b0e07e762d54246471371110f3ffa7fa5c4ec1c1f0668a66fbe385b209d1"

      def install
        bin.install "gosimports"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.3/gosimports_0.2.3_linux_amd64.tar.gz"
      sha256 "2d045e15ccd23a6a7159be63b035116846fab3b6197d76f66761d80e6669696c"

      def install
        bin.install "gosimports"
      end
    end
  end

  test do
    system "#{bin}/gosimports --help"
  end
end
