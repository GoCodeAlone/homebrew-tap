class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.10"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.10/ratchet_darwin_amd64.tar.gz"
      sha256 "ad93f656edbd78ae72331abd0a06973aa44ecc0839fee5b40e68a3d4ca22c427"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.10/ratchet_darwin_arm64.tar.gz"
      sha256 "e3015c4c728195d5691a00cbeb4d3827e41151cc2c76770ede15cf03309baf0c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.10/ratchet_linux_amd64.tar.gz"
      sha256 "5116fea1005fea1314be04bc41a4d28bd684bb566381f215fe4142b3a44ab8c4"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.10/ratchet_linux_arm64.tar.gz"
      sha256 "5db610e43ed43208781733cf50de9a79a0000c5f1b3ea49d18d896cf063d263f"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
