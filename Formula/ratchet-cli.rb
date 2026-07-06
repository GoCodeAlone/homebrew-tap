class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.17"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.17/ratchet_darwin_amd64.tar.gz"
      sha256 "06df95ba2b0af9054505f5ea3d2947b3fc3f6fee5cf6107e0395a8350ad6e280"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.17/ratchet_darwin_arm64.tar.gz"
      sha256 "0618b027e11e73a2ccca9cb792bb3874c072c73769de43d8da3a3870a2ee8995"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.17/ratchet_linux_amd64.tar.gz"
      sha256 "b17a07869abe1214b4bd8b0ebd12398e53189c59fb381ad45c582704f1cba0ba"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.17/ratchet_linux_arm64.tar.gz"
      sha256 "da7644d5fa137db3e76f278d492e0ef6afb64a85755845e38c09a5164ae2ce51"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
