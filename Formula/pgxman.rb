# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgxman < Formula
  desc "PostgreSQL Extensions Manager"
  homepage "https://github.com/pgxman/pgxman"
  version "0.0.4"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.4/pgxman_darwin_arm64.tar.gz"
      sha256 "dec62ccae3177707b19129d96304f860eb54cbf31e784dc4c88c6c8c742feacd"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.4/pgxman_darwin_amd64.tar.gz"
      sha256 "c04b35e997231212d87a7faa9be0ff6af82cb33b11ef64cfd2f56230ee488b95"

      def install
        bin.install "bin/pgxman"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.4/pgxman_linux_amd64.tar.gz"
      sha256 "9e1434e7f14c79f4ce0b0a309c66693354fb35a55245fe0896c697391d9d2c3e"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.4/pgxman_linux_arm.tar.gz"
      sha256 "6e95872961c1d1f894566a0610936f41328a3f96e1133fbdfe3f6e601b9fd2c0"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.4/pgxman_linux_arm64.tar.gz"
      sha256 "3f207c1ebe2329366d8511805b9dc23fc4820a072cf55eb5969cc03400a24f92"

      def install
        bin.install "bin/pgxman"
      end
    end
  end

  head "https://github.com/pgxman/pgxman.git"

  test do
    assert_match(/pgxman version/, shell_output("#{bin}/pgxman --version"))
  end
end
