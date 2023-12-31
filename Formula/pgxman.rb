# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgxman < Formula
  desc "PostgreSQL Extensions Manager"
  homepage "https://github.com/pgxman/pgxman"
  version "1.1.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pgxman/pgxman/releases/download/v1.1.0/pgxman_darwin_arm64.tar.gz"
      sha256 "1dbcdabc040c71d18bfc035cf08f173067735465657aecc6ac20f3827b8df079"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v1.1.0/pgxman_darwin_amd64.tar.gz"
      sha256 "570106f9836ecfc9bc77da979e125f310aecc06b2b128411c0f1d9c4f664fb52"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v1.1.0/pgxman_linux_amd64.tar.gz"
      sha256 "d47b35dd7632f577314f06916c671f9de56f08ab8838dfaa0cb2d62ec96a59a1"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v1.1.0/pgxman_linux_armv6.tar.gz"
      sha256 "8938f6ad232e723d10a53eb5157e8e26c95f172201242ad4c2e02411fa698952"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v1.1.0/pgxman_linux_arm64.tar.gz"
      sha256 "83ff62d9d943f94164b76e358170545afcc1a048b34f09c3dcf51a01286e2723"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
  end

  head "https://github.com/pgxman/pgxman.git"

  test do
    assert_match(/pgxman version/, shell_output("#{bin}/pgxman --version"))
  end
end
