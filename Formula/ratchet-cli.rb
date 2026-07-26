class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.40"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.40/ratchet_darwin_amd64.tar.gz"
      sha256 "1b1d99bff34c1039987f6e6ef4824dcdc9949a91cf117523f010115d5a363b39"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.40/ratchet_darwin_arm64.tar.gz"
      sha256 "57e4bb9dd5b0fab127cf84baa7c0e5c40e0ee6f9d6e10697cfae41a9dab6e8ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.40/ratchet_linux_amd64.tar.gz"
      sha256 "6f38081da5b7132a58ec91c0182fe01dc427f40857a1c1e4a864cf439ff9eacc"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.40/ratchet_linux_arm64.tar.gz"
      sha256 "25999d5189fb1a453f2e2242f37d8dfabc71b23a350a82fa9fe414bf660bdf0e"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
