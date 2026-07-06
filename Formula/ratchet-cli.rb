class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.22"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.22/ratchet_darwin_amd64.tar.gz"
      sha256 "216fe2c82234eb92873be1e2fed7771a97041d2b13ab37a1392d3cae74e5fd7c"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.22/ratchet_darwin_arm64.tar.gz"
      sha256 "4445ccc1c12edbc60570fc81dcb129cfe06979298d06b4188d0c463bc7937afb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.22/ratchet_linux_amd64.tar.gz"
      sha256 "0c34810ab1587346682b222ba5f0be5b1405806d4d27c2d297fea46d22a89e12"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.22/ratchet_linux_arm64.tar.gz"
      sha256 "99f404809f81ef9fe2f09607e358971d5fa63afdb1f6bcd14b8e486cd7b7126c"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
