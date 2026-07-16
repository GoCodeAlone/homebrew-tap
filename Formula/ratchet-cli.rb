class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.35"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.35/ratchet_darwin_amd64.tar.gz"
      sha256 "04ce1a6b4803ceb066f165dd8287e6f909702f9373d3cc6b76921bbad5d63c7b"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.35/ratchet_darwin_arm64.tar.gz"
      sha256 "83b9fe7166d66d83b993bb5751923d4c4fa23a08b62a516e14c81e8627c4dab7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.35/ratchet_linux_amd64.tar.gz"
      sha256 "4b57eb3fb3ee8322e5ef0733631d0450d77d09fcce1a8115696db7a01ce6380e"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.35/ratchet_linux_arm64.tar.gz"
      sha256 "bb7813334f654eced6c45bcefd37a921ae13e7eb2faf1a09e1c975422e384f59"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
