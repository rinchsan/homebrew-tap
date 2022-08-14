# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosimports < Formula
  desc "Command gosimports updates your Go import lines, adding missing ones, removing unreferenced ones, and removing redundant blank lines."
  homepage "https://pkg.go.dev/github.com/rinchsan/gosimports/cmd/gosimports"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.0/gosimports_0.2.0_darwin_amd64.tar.gz"
      sha256 "2fc270ea6a1d9298426fdf35ea18b5b6d8dd29cc4008aa403b561c97c721c5ca"

      def install
        bin.install "gosimports"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.0/gosimports_0.2.0_darwin_arm64.tar.gz"
      sha256 "f9606a8d840a7b7e10d6e45903f3183d65f634025b035d165ee89e635c23a7ec"

      def install
        bin.install "gosimports"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.0/gosimports_0.2.0_linux_amd64.tar.gz"
      sha256 "e52bd06cbff23626d4cfe0df20c37ca57088cb7acb0646e28a571ebdb699ceac"

      def install
        bin.install "gosimports"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.0/gosimports_0.2.0_linux_arm64.tar.gz"
      sha256 "ae208bc17251ffa69c2d6de64210e44d0244bbada1bc63e06ac81afaf4263a0e"

      def install
        bin.install "gosimports"
      end
    end
  end

  test do
    system "#{bin}/gosimports --help"
  end
end
