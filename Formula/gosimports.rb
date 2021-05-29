# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosimports < Formula
  desc "Command gosimports updates your Go import lines, adding missing ones, removing unreferenced ones, and removing redundant blank lines."
  homepage "https://pkg.go.dev/github.com/rinchsan/gosimports/cmd/gosimports"
  version "0.0.16"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.16/gosimports_0.0.16_darwin_amd64.tar.gz"
    sha256 "b7b987f6c38adef060349c049f8abbd6a4bf615afda24ec3cc8ffceb90e68c89"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.16/gosimports_0.0.16_darwin_arm64.tar.gz"
    sha256 "ec14df9e3cfc3ed76e433e503ab0e3114706d818aa0155e011374d84f5ca7fbe"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.16/gosimports_0.0.16_linux_amd64.tar.gz"
    sha256 "0e15cee6cbf565a11f0b240637f92daa16c4e6eee65373e0a71a260a8dce59f3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.16/gosimports_0.0.16_linux_arm64.tar.gz"
    sha256 "2e2dbda97f3c0c2f324d49ab31462c2895985865a697957aa441589f60c856df"
  end

  def install
    bin.install "gosimports"
  end

  test do
    system "#{bin}/gosimports --help"
  end
end
