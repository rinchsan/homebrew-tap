# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosimports < Formula
  desc "Command gosimports updates your Go import lines, adding missing ones, removing unreferenced ones, and removing redundant blank lines."
  homepage "https://pkg.go.dev/github.com/rinchsan/gosimports/cmd/gosimports"
  version "0.0.23"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.0.23/gosimports_0.0.23_darwin_amd64.tar.gz"
      sha256 "b5fb1f74823f11ba0105243d2591a2d6307d8e81748eda409ebf6a9c69789283"
    end
    if Hardware::CPU.arm?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.0.23/gosimports_0.0.23_darwin_arm64.tar.gz"
      sha256 "5ee73fc6738416e4bb73915ea1ba88399a8ae0f9f657b01f22a7c71112cf0795"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.0.23/gosimports_0.0.23_linux_amd64.tar.gz"
      sha256 "8cbb603a54588ee4d033ab090a4448cc11d49cef0d5086431af09a08340128f6"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.0.23/gosimports_0.0.23_linux_arm64.tar.gz"
      sha256 "ed8b3b956195a310306ae6887413ef47c70987d136e541635eb8395833a04c03"
    end
  end

  def install
    bin.install "gosimports"
  end

  test do
    system "#{bin}/gosimports --help"
  end
end
