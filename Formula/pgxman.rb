# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgxman < Formula
  desc "PostgreSQL Extensions Manager"
  homepage "https://github.com/pgxman/pgxman"
  version "1.2.1"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pgxman/pgxman/releases/download/v1.2.1/pgxman_darwin_arm64.tar.gz"
      sha256 "319fa0f5abd410d83c302857374c68830c35974a20ecac451edf2524159ba804"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v1.2.1/pgxman_darwin_amd64.tar.gz"
      sha256 "db7321fbdf7cd7d9e3c45f3211419e12b05532527345e110fa1a02ec5b6ca97c"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v1.2.1/pgxman_linux_amd64.tar.gz"
      sha256 "af99710f9ca8e3acf95eb51b170c1a1cde9cd15c23076b316e6b7ccba88dfea3"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v1.2.1/pgxman_linux_armv6.tar.gz"
      sha256 "35fb63cb7b1b3f4f1f2e8105cbdb6945bf4688ddd1cf9d92686b8d4a4c7d1bb2"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v1.2.1/pgxman_linux_arm64.tar.gz"
      sha256 "3de488cf119ee27a7130d24571d8e8c4337e0fc040bb00ff8ea14e37da46f148"

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
