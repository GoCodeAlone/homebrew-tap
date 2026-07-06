class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.13"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.13/ratchet_darwin_amd64.tar.gz"
      sha256 "bc04c1b2d04945ee096a181baddddc168551497eaa7ca1915694fa7436f7f78e"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.13/ratchet_darwin_arm64.tar.gz"
      sha256 "dfb68ed335596d15148e0e8bb212d483efd078942152d0921f9255ba26873b7e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.13/ratchet_linux_amd64.tar.gz"
      sha256 "2a565ec44c5d87a8ac3290d3647fe51acdd95b26b5af721e6b9b25a65a4c959d"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.13/ratchet_linux_arm64.tar.gz"
      sha256 "12571551a0282c7653e9cccb55b5ccc4dcbe63e75b9d4ab1f416eb4e9dd6672b"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
