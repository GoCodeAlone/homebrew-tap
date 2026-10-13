class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.41"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.41/ratchet_darwin_amd64.tar.gz"
      sha256 "b3372a4f37494df745a4fa1c1c264113062bdf554df27936d367f8e3c965680a"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.41/ratchet_darwin_arm64.tar.gz"
      sha256 "f4b054d0179f5be67c5d89774000c521109bd3e3465c5a6a733c13600172e2bd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.41/ratchet_linux_amd64.tar.gz"
      sha256 "0e6a716b1960fccf1422b256ddf877d135914a495aa231c084d27faaae00234d"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.41/ratchet_linux_arm64.tar.gz"
      sha256 "b2a7b3770e1881874dabba05b968fb0a3f82b69c86f551083875c577ae82c8bd"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
