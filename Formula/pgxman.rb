# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgxman < Formula
  desc "PostgreSQL Extensions Manager"
  homepage "https://github.com/pgxman/pgxman"
  version "0.0.11"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.11/pgxman_darwin_arm64.tar.gz"
      sha256 "8f2302b8b874583bf27d5e0267f5270dae3997f6cf6f1583625cfafc9a696f1e"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.11/pgxman_darwin_amd64.tar.gz"
      sha256 "66afe7db6756dcae95ef1fca7532071c29206b4e3b070ebe39c1be7807f45353"

      def install
        bin.install "bin/pgxman"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.11/pgxman_linux_arm64.tar.gz"
      sha256 "0600f65408cdc2d64049bcac4befef338cb31ca0ef5c3cb2758f7a89ecd8f1e7"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.11/pgxman_linux_amd64.tar.gz"
      sha256 "fc7362634366179fc8decf1d90a665f95846536683e3258b59d72395e3f28d04"

      def install
        bin.install "bin/pgxman"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v0.0.11/pgxman_linux_arm.tar.gz"
      sha256 "b8696d46a30ad201f9776628c297f531abd7593b10517623f321d47d1ab78415"

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
