class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.28"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.28/ratchet_darwin_amd64.tar.gz"
      sha256 "0ad263b471e564abcf38864429b46e2d8ae4c6e2d915486e0def424d3ba21e94"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.28/ratchet_darwin_arm64.tar.gz"
      sha256 "251748b7463cbc049738d02325687413faabb117304ae0ab7af2ab3b267ccc22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.28/ratchet_linux_amd64.tar.gz"
      sha256 "7b9dc88d2845060f88598c85923c4c4010eef47138f752da816088c0f43de402"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.28/ratchet_linux_arm64.tar.gz"
      sha256 "c87f95ea29b5861295f782148d33f0888dce3c4ffca3223ed07454d5254ee5d8"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
