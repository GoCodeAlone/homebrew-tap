class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.9"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.9/ratchet_darwin_amd64.tar.gz"
      sha256 "70e82d3a3d6dd7213642fa547593145e080e2698056c5ec67289a89aa2898df9"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.9/ratchet_darwin_arm64.tar.gz"
      sha256 "3f86e7912c212a78a58d8e3e1f9dd171149301bf815b2fa36966e875c2fc034f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.9/ratchet_linux_amd64.tar.gz"
      sha256 "38d3bd20a607f76489872cb920a9c9ba673d5ea91495784e9030f98781f0d8b1"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.9/ratchet_linux_arm64.tar.gz"
      sha256 "336a47ab2aa2324aeb6b5a114dc175b3694e960b6200a0f11e91eb9b4932fcf3"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
