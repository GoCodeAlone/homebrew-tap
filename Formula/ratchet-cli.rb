class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.23"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.23/ratchet_darwin_amd64.tar.gz"
      sha256 "b7ea4c27300c8e85728013c5b53b14782084ae925b07f1125b8bd98f8a78af88"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.23/ratchet_darwin_arm64.tar.gz"
      sha256 "461eb7033fc6408e4bdeb04ac225f7568c7c904de3a9725d1fe316a4e12bb895"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.23/ratchet_linux_amd64.tar.gz"
      sha256 "f0e2cecc8c391c86ee15681d6f6481c1c9774b913af0288f40935a0130854c01"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.23/ratchet_linux_arm64.tar.gz"
      sha256 "e37ed0920c74562b73291c458a76397b413f43f2b21fc072474a061578047f0e"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
