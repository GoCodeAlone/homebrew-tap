class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.39"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.39/ratchet_darwin_amd64.tar.gz"
      sha256 "ed04649972523be151462d97460861b4b44bf1e8dd0b5b4eb3605435b015c1ca"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.39/ratchet_darwin_arm64.tar.gz"
      sha256 "2df75c0f42e034f89d9bab9da237654ec2c9619bfe5e0e0222765ff5454322d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.39/ratchet_linux_amd64.tar.gz"
      sha256 "436cb75407e22cc19696fcf8a0d90e9e6dea36ce121da5f212f08ee7be8d0f2b"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.39/ratchet_linux_arm64.tar.gz"
      sha256 "ff88d8a82f4402a063cf89b0bb4b59263848bd8dceb085662e66d2ca7c3f45f1"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
