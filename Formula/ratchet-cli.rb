class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v#{version}/ratchet_darwin_amd64.tar.gz"
      sha256 "4b04f09466d06e7fe608a73d4fff92ba0b7ccf5d1b568e1fbed2fe002bd0169f"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v#{version}/ratchet_darwin_arm64.tar.gz"
      sha256 "f71274c6594d0a91f84e5125eb3adff8a409a03c7a7385d667200b10f70a0690"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v#{version}/ratchet_linux_amd64.tar.gz"
      sha256 "72f6a7055cfe4884d1197f6ee9f99bc056d6da07ef582190aa997dc4a2dfa94b"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v#{version}/ratchet_linux_arm64.tar.gz"
      sha256 "8934981cf4489a9bebef972cd1d70c6547ea455560c07d59e672dd012e4c0c42"
    end
  end

  def install
    bin.install "ratchet"
  end

  def post_install
    # Ad-hoc codesign so macOS Gatekeeper allows execution
    if OS.mac?
      system "codesign", "--force", "--sign", "-", "#{bin}/ratchet"
    end
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --help 2>&1", 0)
  end
end
