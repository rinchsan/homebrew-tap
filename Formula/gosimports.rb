# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosimports < Formula
  desc "Command gosimports updates your Go import lines, adding missing ones, removing unreferenced ones, and removing redundant blank lines."
  homepage "https://pkg.go.dev/github.com/rinchsan/gosimports/cmd/gosimports"
  version "0.0.15"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.15/gosimports_0.0.15_darwin_amd64.tar.gz"
    sha256 "7a2584df594a982477eb504de4d848b03f073b69c53cd3d02f0925af787ac587"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.15/gosimports_0.0.15_darwin_arm64.tar.gz"
    sha256 "091fcbffd9a09052c43fbd132625ba4820b0009a46d2d51f75a3a2ad9f241e24"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.15/gosimports_0.0.15_linux_amd64.tar.gz"
    sha256 "74f48c754278957c698e709bb9fa8c393766c2ca5988b4f699209af58b50110f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.15/gosimports_0.0.15_linux_arm64.tar.gz"
    sha256 "84199b2b40cbef5da76dd4125d1436518863bf60116272be9bd4d10963b6358e"
  end

  def install
    bin.install "gosimports"
  end

  test do
    system "#{bin}/gosimports --help"
  end
end
