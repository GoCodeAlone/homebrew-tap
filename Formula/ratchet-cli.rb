class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.18"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.18/ratchet_darwin_amd64.tar.gz"
      sha256 "157c0f44292b1f5c309e673555b54e136b48d0f98a6c0c9bfac81b11ce085b62"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.18/ratchet_darwin_arm64.tar.gz"
      sha256 "4cf65a96e29d119849f6ad734fd1af1fcd9ba2b9c690d4ef7abcac34852adfbf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.18/ratchet_linux_amd64.tar.gz"
      sha256 "10276af277c22e3d82962efcf4efd35b1f6ec9e735971d8a437a450593c747b1"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.18/ratchet_linux_arm64.tar.gz"
      sha256 "1ab3066de42e49ef9e9bf146b0a04d0b30851ec049128c5f1c2fb29e5038b3a9"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
