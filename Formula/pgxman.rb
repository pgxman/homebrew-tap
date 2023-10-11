# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgxman < Formula
  desc "PostgreSQL Extensions Manager"
  homepage "https://github.com/pgxman/pgxman"
  version "0.1.6"
  license "Apache 2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pgxman/release/releases/download/v0.1.6/pgxman_darwin_arm64.tar.gz"
      sha256 "4a0e66609a52e9d4d913d86ada9e1bf13b06b971049f585a22ac46cd39f43f83"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/release/releases/download/v0.1.6/pgxman_darwin_amd64.tar.gz"
      sha256 "e11c4daf2750aae5eb5b198248472d3e44471cc9cdbc03073804bb8152b7545c"

      def install
        bin.install "bin/pgxman"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/release/releases/download/v0.1.6/pgxman_linux_amd64.tar.gz"
      sha256 "563defa5cda83c18e126f09d253568e8270292180090a2853e1a7cdf8f7abaa3"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/release/releases/download/v0.1.6/pgxman_linux_armv6.tar.gz"
      sha256 "88a838d18319eadc962e9891ec7be38fcefd4a9175dc6f378d3e224541363576"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/release/releases/download/v0.1.6/pgxman_linux_arm64.tar.gz"
      sha256 "f3e502030ab04187beb8435c3832b391033c92f62a67e22f91da1d4ad8cae588"

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
