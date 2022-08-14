# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gosimports < Formula
  desc "Command gosimports updates your Go import lines, adding missing ones, removing unreferenced ones, and removing redundant blank lines."
  homepage "https://pkg.go.dev/github.com/rinchsan/gosimports/cmd/gosimports"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.1/gosimports_0.2.1_darwin_amd64.tar.gz"
      sha256 "226ed70b577ac77b1f0ac230ad66c179765d371e465fca12a0910682d7d0d03d"

      def install
        bin.install "gosimports"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.1/gosimports_0.2.1_darwin_arm64.tar.gz"
      sha256 "b543b01fa8f713eb814e22f710288f9ea7c06c3173cb36fd124f6ceeda658888"

      def install
        bin.install "gosimports"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.1/gosimports_0.2.1_linux_amd64.tar.gz"
      sha256 "9404fe29a2b46ab0da4e52001c1f7825e342d1aa29a47b20814d3ed594b4ce73"

      def install
        bin.install "gosimports"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rinchsan/gosimports/releases/download/v0.2.1/gosimports_0.2.1_linux_arm64.tar.gz"
      sha256 "3bc41f8390f1d50ddcb5169dde6581ab39fb35638a4f7c443cf54d32ce0574a0"

      def install
        bin.install "gosimports"
      end
    end
  end

  test do
    system "#{bin}/gosimports --help"
  end
end
