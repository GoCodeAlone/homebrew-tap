class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.16"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.16/ratchet_darwin_amd64.tar.gz"
      sha256 "37b07cb5645796376d8ca4dc70568961fcbf67f84d9168fd8cbba0494dca3a1b"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.16/ratchet_darwin_arm64.tar.gz"
      sha256 "85e3638d77a528e4e262bdc88ad5a5470b2b9dceddfb6b6c6e9244c95691ef02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.16/ratchet_linux_amd64.tar.gz"
      sha256 "ead3404bd509d92233e6d239fa295dfa7487e9af947b72ec4a47ff2ea98b69fe"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.16/ratchet_linux_arm64.tar.gz"
      sha256 "e65c15255950afc53f5d0e6ad254fd3bb072cebe5c695caeaf352cdb5f891e4e"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
