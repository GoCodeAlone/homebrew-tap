class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.29"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.29/ratchet_darwin_amd64.tar.gz"
      sha256 "6a17e05594c5fcf9b5e009e222b1d162d3de439f919202d79baf1d097b2df8e1"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.29/ratchet_darwin_arm64.tar.gz"
      sha256 "74d2b67a1cf0064a266be0d30c6dfc6891dd0341c022ea2a8a2bb08422fd7248"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.29/ratchet_linux_amd64.tar.gz"
      sha256 "2079e2abfead65fb14ab566454b20a9149c499082536df9c6f1b55475e473011"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.29/ratchet_linux_arm64.tar.gz"
      sha256 "1b9eb810e27ddef4363101bb854c5bdb540d11d6e721f1d23387b79607cd0469"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
