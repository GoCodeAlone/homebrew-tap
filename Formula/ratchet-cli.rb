class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.26"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.26/ratchet_darwin_amd64.tar.gz"
      sha256 "333a3ddf2e5397e0505485faa24b520259979cda7c00a87b00b67f10e4c0f6fb"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.26/ratchet_darwin_arm64.tar.gz"
      sha256 "f3397c02f3a107516e02abe6a0ec0cbcd808a0a0680c9ffe69389e25af40f8a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.26/ratchet_linux_amd64.tar.gz"
      sha256 "7aa20d7c6aa2091250aa1830c9f9a2eef259ca4bf9ffc2bbddc484ef35ea90d7"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.26/ratchet_linux_arm64.tar.gz"
      sha256 "5621c1e082d99c17ec41ab3d39e805e9739049577a1dc5fefed3005d29544ae7"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
