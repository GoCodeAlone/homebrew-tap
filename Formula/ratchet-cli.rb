class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.27"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.27/ratchet_darwin_amd64.tar.gz"
      sha256 "d4f1e1a4fb43fb4f46a71e6b6734a4292464f8936ee2e22d0abdb77c638911b6"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.27/ratchet_darwin_arm64.tar.gz"
      sha256 "112aa34fa6f81c8028fb309441c2c868e3a4b1ff39d686d79b357530da843eb0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.27/ratchet_linux_amd64.tar.gz"
      sha256 "c3efb50fa5f3e909d5c361f64debb13f2fcbc30ad949cb361708864fe93f940e"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.27/ratchet_linux_arm64.tar.gz"
      sha256 "3fc53b4103ac4e97f09313940b80fcfde6dc3db6d9873834c538762b9a4aca34"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
