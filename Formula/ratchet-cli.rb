class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.36"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.36/ratchet_darwin_amd64.tar.gz"
      sha256 "729e6b271135fdb6bf5ca2d163f854d0f8d0a4093f1a4dba9fbd09d8137fffc9"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.36/ratchet_darwin_arm64.tar.gz"
      sha256 "4b5db98d97c868eea5a30231287e4fba09f9abcd221e47a5f4c08307ed9e7aa5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.36/ratchet_linux_amd64.tar.gz"
      sha256 "03b3ce4b2ef72fcdca685f2108060d10201751b967e49606596004821dc1cd85"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.36/ratchet_linux_arm64.tar.gz"
      sha256 "61212c5efe0ec2de59a8393ef47af5c3929b6eef2f153fa643b707b417caf463"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
