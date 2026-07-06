class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.7"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.7/ratchet_darwin_amd64.tar.gz"
      sha256 "e49292407ffa025ca61fcd2231c741f3f72de838ae895c0e8886382445e22fa3"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.7/ratchet_darwin_arm64.tar.gz"
      sha256 "3afe0a0134997d955a0c7f1edb4eb2db67d9effa5f26f5a5085c69a3e2f8b2f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.7/ratchet_linux_amd64.tar.gz"
      sha256 "35addff1048d1b381242f5259f30084812e0cac7d1a4f5e1dff74ae52aaf1c0d"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.7/ratchet_linux_arm64.tar.gz"
      sha256 "c2c506acf5f5911ff0b661185820bfc827dc93d4f7562d0829747cb8953895d5"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
