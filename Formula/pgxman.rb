# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Pgxman < Formula
  desc "PostgreSQL Extensions Manager"
  homepage "https://github.com/pgxman/pgxman"
  version "1.2.2"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pgxman/pgxman/releases/download/v1.2.2/pgxman_darwin_arm64.tar.gz"
      sha256 "f5b93ac448ec3862c1923f6f0399101dda2a011b7bb8f353cfe0931d60375573"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v1.2.2/pgxman_darwin_amd64.tar.gz"
      sha256 "3b355ea71a7939a05621c84731380a383e849068ffe3bbb06da6ae782e37a7fa"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v1.2.2/pgxman_linux_armv6.tar.gz"
      sha256 "fdfbf7d011c2ccd64a648320229d2c3d2188ad228d11fc86d7a9e4bdc31c2c0c"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/pgxman/pgxman/releases/download/v1.2.2/pgxman_linux_arm64.tar.gz"
      sha256 "e595a1c2db49ec388a17425e2aa7b15a80b775551bd9aa13bdc22dc7119e4c51"

      def install
        bin.install "bin/pgxman"
        man1.install Dir["docs/man/man1/pgxman*.1"]
        generate_completions_from_executable(bin/"pgxman", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/pgxman/pgxman/releases/download/v1.2.2/pgxman_linux_amd64.tar.gz"
      sha256 "bcbe3fadd9fd46e671f3b299e4db911687be50cc47f19cf45240447c3b7cda6c"

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
