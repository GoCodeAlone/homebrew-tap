class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.30"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.30/ratchet_darwin_amd64.tar.gz"
      sha256 "572565df65b5f75f41fee564eb1b05bed032e483e5ca42c63aa58cf7ffd8ed35"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.30/ratchet_darwin_arm64.tar.gz"
      sha256 "58792490021476276fd8344cfa88d0f190711ac4d1e0c9621704940c75b01bfc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.30/ratchet_linux_amd64.tar.gz"
      sha256 "0e577f468f0bce185310b430985e7fe248d250e52687d58c2ce8b0fb3f5ea3d9"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.30/ratchet_linux_arm64.tar.gz"
      sha256 "320967111fc0d5d3ce0a751ceaf7494668ad28857ea01f64e76b64b788a32eca"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
