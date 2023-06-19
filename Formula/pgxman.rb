# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgxman < Formula
  desc "PostgreSQL Extensions Manager"
  homepage "https://github.com/pgxman/pgxman"
  version "0.0.8"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.8/pgxman_darwin_amd64.tar.gz"
      sha256 "b8d808641086339f4c45b26a34442e290f4592106cbeb1254cb77c9c4499aa56"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.8/pgxman_darwin_arm64.tar.gz"
      sha256 "20b3a9368dce19327dccc712b0683e98c85b080aee550e30f25787701595ac43"

      def install
        bin.install "bin/pgxman"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.8/pgxman_linux_amd64.tar.gz"
      sha256 "5556b043df271129643a98d607bf9e558a035709e5acb3f9327f54c1af8d3613"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.8/pgxman_linux_arm.tar.gz"
      sha256 "a0804bd406253d9fa43e5c3b5550b55f0d64e9b4b7b94f14a1acb2fc27635641"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.8/pgxman_linux_arm64.tar.gz"
      sha256 "c2e4f6adda6f28ac5ae1f601fbbde6cb241d179f82cc7adb0ee83b6f00b3680d"

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
