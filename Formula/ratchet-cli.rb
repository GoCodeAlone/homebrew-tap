class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.25"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.25/ratchet_darwin_amd64.tar.gz"
      sha256 "12281c0a40f6f34c751ef4095f357bf04c2568297dac95cdd3ee50d6e85a1d52"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.25/ratchet_darwin_arm64.tar.gz"
      sha256 "bfd57acba3d6ee6bf50de43eb3f98304bda32ad565c36d395b85803781ec4bd2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.25/ratchet_linux_amd64.tar.gz"
      sha256 "6252a7cbf843164577701bab286a648b37a3e0618144c76cbbb52391c7c6f119"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.25/ratchet_linux_arm64.tar.gz"
      sha256 "b223898b21b8bb77f53132904e479fa615e1de4c1ead4ef10f6f9345a1f4a15a"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
