class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.6"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.6/ratchet_darwin_amd64.tar.gz"
      sha256 "e18448d337446818b0f15758c812231e0e3947769c50d27dd4fcb16b6d47be9f"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.6/ratchet_darwin_arm64.tar.gz"
      sha256 "1e4e680416c875fd384a079647490f4dab4fe375d2ed204d1ffdee2102ddb9ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.6/ratchet_linux_amd64.tar.gz"
      sha256 "fcb5f16aecc3971b377f1d9db0d8b029d83d2b664fb411165ffacf8ce1248ec8"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.6/ratchet_linux_arm64.tar.gz"
      sha256 "c6d120000d65001bf8bc8ef3865ae1c858478f0e147e838a1b19a66fa2430201"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
