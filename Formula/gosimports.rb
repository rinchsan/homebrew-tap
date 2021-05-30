# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosimports < Formula
  desc "Command gosimports updates your Go import lines, adding missing ones, removing unreferenced ones, and removing redundant blank lines."
  homepage "https://pkg.go.dev/github.com/rinchsan/gosimports/cmd/gosimports"
  version "0.0.18"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.18/gosimports_0.0.18_darwin_amd64.tar.gz"
    sha256 "d85b434de122adb272a774e6d01086a3a1fd0f57879ce5043602d8363ad59665"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.18/gosimports_0.0.18_darwin_arm64.tar.gz"
    sha256 "040696646b507422404467a4d2e6b000d4071df1109434dc0318d40e332750ea"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.18/gosimports_0.0.18_linux_amd64.tar.gz"
    sha256 "b909a35a3fafb8a1cdf3803da86f33e2094d81b2b0b14185a7df62bfed295338"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/rinchsan/gosimports/releases/download/v0.0.18/gosimports_0.0.18_linux_arm64.tar.gz"
    sha256 "c5c6cbbbb3458f3bc3ff33a8d77746ccf975c18c30a9a84200a8bab5588bab6e"
  end

  def install
    bin.install "gosimports"
  end

  test do
    system "#{bin}/gosimports --help"
  end
end
