# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosimports < Formula
  desc "Command gosimports updates your Go import lines, adding missing ones, removing unreferenced ones, and removing redundant blank lines."
  homepage "https://pkg.go.dev/github.com/rinchsan/gosimports/cmd/gosimports"
  version "0.0.27"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.0.27/gosimports_0.0.27_darwin_amd64.tar.gz"
      sha256 "ce1ebd78d82a360adf90350538b19529f1328b2c9b560d078707e2a2f2fed35d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.0.27/gosimports_0.0.27_darwin_arm64.tar.gz"
      sha256 "9c12e647eb4359710e737f76258e49977e961c0b73bcd83f0586f8942620233b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.0.27/gosimports_0.0.27_linux_amd64.tar.gz"
      sha256 "759628b99c1c9e9c0559b6f7d3d1613098b407e4f9f6b66d3b64cb7ea0bd3b81"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.0.27/gosimports_0.0.27_linux_arm64.tar.gz"
      sha256 "3573b42cbebc3f53b94ff4ad3f91c04d5ae0016923fcaef25fcd16de89cc3ff8"
    end
  end

  def install
    bin.install "gosimports"
  end

  test do
    system "#{bin}/gosimports --help"
  end
end
