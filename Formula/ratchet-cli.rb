class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.15"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.15/ratchet_darwin_amd64.tar.gz"
      sha256 "e1d69d2f9c80db996ffe2d494e8a98ea3be9ce6e0fc9480eab4db17fe7cc4033"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.15/ratchet_darwin_arm64.tar.gz"
      sha256 "a6f11f11e97e0c7d774569b2e0713c84fb251c1f89520e8160f06fa2ae0d6168"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.15/ratchet_linux_amd64.tar.gz"
      sha256 "c7321fecf437fb1a131b75de0a437db63a0100aac38d0b4b641ced6ddd2e8cdd"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.15/ratchet_linux_arm64.tar.gz"
      sha256 "61ae6e19c709fba4fa18a88f088bf7de2c3762799abe59d22d1ec5c1945d2260"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
