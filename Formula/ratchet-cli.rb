class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.34"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.34/ratchet_darwin_amd64.tar.gz"
      sha256 "3bf207ef4d5b4e2f322853d5e4f8422cac26303bde923cb30d2855782a21b963"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.34/ratchet_darwin_arm64.tar.gz"
      sha256 "930a465009f0d39a3c6e5771f55be8eeaaf0423b38b86fc76d63628b4e1f1718"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.34/ratchet_linux_amd64.tar.gz"
      sha256 "bc91492181dbd1b236a3cbcd5d7a9ccc1e55a2047743d140ffbe908626a74528"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.34/ratchet_linux_arm64.tar.gz"
      sha256 "0e59cc6bf015df8b0af3cc6f404b264951d2e679d5297e45e90baafa1ba459f6"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
