class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.25.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v#{version}/ratchet_darwin_amd64.tar.gz"
      sha256 "46984ecc4c806d11b557c79dfb6bb0609db8d18fcbfb0d6f2448fc856f7b4fff"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v#{version}/ratchet_darwin_arm64.tar.gz"
      sha256 "8c9ad45aebc6a8a34c257faa640a5d16ee1160b4964653d5ed7b9f38927175ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v#{version}/ratchet_linux_amd64.tar.gz"
      sha256 "b524f31fa64ecbe3157deaf136d0239afd4b26716b3f2b37ba30dd6e56d10cea"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v#{version}/ratchet_linux_arm64.tar.gz"
      sha256 "1feea887c07c0e1f264924d0c4f668237d921e4dc5a995d0afd15ea79e016249"
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
