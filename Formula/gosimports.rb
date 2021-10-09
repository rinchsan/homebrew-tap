# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosimports < Formula
  desc "Command gosimports updates your Go import lines, adding missing ones, removing unreferenced ones, and removing redundant blank lines."
  homepage "https://pkg.go.dev/github.com/rinchsan/gosimports/cmd/gosimports"
  version "0.1.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.1.0/gosimports_0.1.0_darwin_arm64.tar.gz"
      sha256 "f944eae4c45d033565e9d766378ed452b659fd354764462c3fe188dbde4255d8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.1.0/gosimports_0.1.0_darwin_amd64.tar.gz"
      sha256 "2e6f4394776cd01845c98718c52bda512fce6ff5471b169745766023fe91e6da"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.1.0/gosimports_0.1.0_linux_amd64.tar.gz"
      sha256 "136a5bb2dd81ae06c06851950e6890299c4f81d06b061716d9a5af8b7cf12e84"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.1.0/gosimports_0.1.0_linux_arm64.tar.gz"
      sha256 "efc649cec0e5b330c215ec1ba0b1185b730f3bbdac1f27ceb54bb4612e49348e"
    end
  end

  def install
    bin.install "gosimports"
  end

  test do
    system "#{bin}/gosimports --help"
  end
end
