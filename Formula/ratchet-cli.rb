class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.14"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.14/ratchet_darwin_amd64.tar.gz"
      sha256 "8ec0e6a60054f04f0dd49ff8a0fba96cbc12fed97b4fa1120776236ae8dc962f"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.14/ratchet_darwin_arm64.tar.gz"
      sha256 "63716b21d80d9eecd4fae6e18ac0aee4846ece45102068204bbc0814a8b2e1be"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.14/ratchet_linux_amd64.tar.gz"
      sha256 "1939e167701001e736249d9efc9ccd57a1476598171a710e5171201ddc23d83f"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.14/ratchet_linux_arm64.tar.gz"
      sha256 "553cc81bab1dfaa3e58788f54ea66075766ee297e2d9715beab77f52fddee65b"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
