class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.21"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.21/ratchet_darwin_amd64.tar.gz"
      sha256 "955ec277cedd1cbb872adad8bf5ed59a5fa621c2bb519403ffe4e74adc8d0c43"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.21/ratchet_darwin_arm64.tar.gz"
      sha256 "43c38498e7445a1fe6784b1b7ce8643df7907187a38e607263dc04cd558e1d60"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.21/ratchet_linux_amd64.tar.gz"
      sha256 "140f5d9eff7af0577f33c0de1a3ffcfe6b55413b0f65f8817d5daeece4487790"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.21/ratchet_linux_arm64.tar.gz"
      sha256 "96905f66146d21d307f92195122c6e97bb9c4e05a6456eb3c4a0b93a30d0228e"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
