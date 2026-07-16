class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.37"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.37/ratchet_darwin_amd64.tar.gz"
      sha256 "f152ad7aa7f2670d1fd96cb2807fac82bb5cd989bab92663ee59c1e5c92aff0b"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.37/ratchet_darwin_arm64.tar.gz"
      sha256 "49130adf5d63abd4e5ecd53439556a5bfdb6d9e56107ff1141cb400cebb8a111"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.37/ratchet_linux_amd64.tar.gz"
      sha256 "982791ed7c348cf613261acbcc5339316c28b732ec64c8ecd9e94794924a7d22"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.37/ratchet_linux_arm64.tar.gz"
      sha256 "90741116fac358ec462c94333c41713b7afd7b4da97caef221e5ce1409d9203f"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
