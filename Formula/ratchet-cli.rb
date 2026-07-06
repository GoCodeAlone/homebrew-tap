class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.11"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.11/ratchet_darwin_amd64.tar.gz"
      sha256 "acd58c6e8d87947e34bb8b95e21ba7f0a849d8ab9598745e5a6d606752dfe3b7"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.11/ratchet_darwin_arm64.tar.gz"
      sha256 "4ea19ba20244493e42c93712d68c135cd9afedb5ec45ca1a71d9fada4a2f7ac3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.11/ratchet_linux_amd64.tar.gz"
      sha256 "4aad2fe9c7d82c68d8d820acfd4147d7c09af26d246a3544070d4592ffcfadb8"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.11/ratchet_linux_arm64.tar.gz"
      sha256 "ea87277d932d223bd4876efd4c3cfd4d1f33f78528220c12e66a4dbe6ded5aac"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
