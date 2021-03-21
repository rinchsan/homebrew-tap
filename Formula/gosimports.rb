# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosimports < Formula
  desc "Command gosimports updates your Go import lines, adding missing ones, removing unreferenced ones, and removing redundant blank lines."
  homepage "https://pkg.go.dev/github.com/rinchsan/gosimports/cmd/gosimports"
  version "0.0.14"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.14/gosimports_0.0.14_darwin_amd64.tar.gz"
    sha256 "46fa661cde47de8af5f0aea2528c410860ba9e8dbd467d00f0c1e85bf4dbd8e9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.14/gosimports_0.0.14_darwin_arm64.tar.gz"
    sha256 "bcd16024c238acd3fa9e1fd0a0fa54b6b83077a4e346899b13e8bec6c3549ed8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.14/gosimports_0.0.14_linux_amd64.tar.gz"
    sha256 "28f2776503a4f3541fd26dd7197086ef4ac49dddcd560cee593d16de6fe443c0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.14/gosimports_0.0.14_linux_arm64.tar.gz"
    sha256 "e7bf18897f9b1f3d2f6badacd33e5e48f84b0d77a396f796addd180b595d49b0"
  end

  def install
    bin.install "gosimports"
  end

  test do
    system "#{bin}/gosimports --help"
  end
end
