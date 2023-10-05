# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgxman < Formula
  desc "PostgreSQL Extensions Manager"
  homepage "https://github.com/pgxman/pgxman"
  version "0.1.3"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/release/releases/download/v0.1.3/pgxman_darwin_amd64.tar.gz"
      sha256 "05c06ac34313b2871845561a78f220e6fae06b31604781565526340f5651f779"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pgxman/release/releases/download/v0.1.3/pgxman_darwin_arm64.tar.gz"
      sha256 "6621e0b1715bb6b32224c5f615bba0c6f66fd174291dfde3f84b0fa08496dc51"

      def install
        bin.install "bin/pgxman"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/release/releases/download/v0.1.3/pgxman_linux_amd64.tar.gz"
      sha256 "f4c84f22eb5775885c5f5b3fdba25b77f2286cd919e6ec5b10eb65e0c5275a3f"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/release/releases/download/v0.1.3/pgxman_linux_armv6.tar.gz"
      sha256 "dbc70af7739940086dd9e57e439ce3f90e3e2c575c9728a8aa36b3beaf6fb5fd"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/release/releases/download/v0.1.3/pgxman_linux_arm64.tar.gz"
      sha256 "535e2199d4fe43a3bbf58d7d4404e56860149c77ed7a2d8e90bd081ea9909511"

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
