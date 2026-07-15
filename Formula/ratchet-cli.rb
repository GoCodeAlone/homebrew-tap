class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.31"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.31/ratchet_darwin_amd64.tar.gz"
      sha256 "327bb4f3756ec4cf5cf48b2ad7ffff6decf6307761a207f068e4501ffbb21f5f"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.31/ratchet_darwin_arm64.tar.gz"
      sha256 "bfd0993eb2b1fcd5a1daa61f51017b8bca3cb7240e9116295c17fb426ed90c03"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.31/ratchet_linux_amd64.tar.gz"
      sha256 "2b486d973f8a5214264d44644cf97e47855c75d58eb408ca5cca6945ec6bd5d8"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.31/ratchet_linux_arm64.tar.gz"
      sha256 "675af8b99929d155850f0cfdca3895c16aebee76b1b4be25ef7d4d60198dfd0c"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
