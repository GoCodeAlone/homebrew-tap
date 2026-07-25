class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.38"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.38/ratchet_darwin_amd64.tar.gz"
      sha256 "541f1d0e994f6022cc38d7713ee9fbc0175f407c30d30345de78e1aab53bb465"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.38/ratchet_darwin_arm64.tar.gz"
      sha256 "35ca63b0fa391a32c701dd5ddfeb00999d4cfafb6b223f283e5e50c5b87a552e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.38/ratchet_linux_amd64.tar.gz"
      sha256 "936b0e147fbce3c6a60efff6c97c55dd6eb436550837e6b0763836e2545ed064"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.38/ratchet_linux_arm64.tar.gz"
      sha256 "8fe9a1dee6a7501ebd728d932ebd4d67c8c5ed5a3502c2efe74bad54aa16e7f1"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
