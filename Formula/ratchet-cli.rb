class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.19"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.19/ratchet_darwin_amd64.tar.gz"
      sha256 "53fde0833c2b794855a59ba0998ca521f9e48bd3d2c843d3a4ef93be490bcea9"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.19/ratchet_darwin_arm64.tar.gz"
      sha256 "b481d5af295002c25ee6215b12d408ac6ceffe803b1e3a3f66a43c4c22a03d02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.19/ratchet_linux_amd64.tar.gz"
      sha256 "a73d72d40ee39e11d126b6523c2ecff341ccb8a35a2d67ec0921e4807e526a97"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.19/ratchet_linux_arm64.tar.gz"
      sha256 "207dba14f2ba590904a7954ff3497cf3ae65f401be0912185c19de0c484c153d"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
