class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.8/ratchet_darwin_amd64.tar.gz"
      sha256 "4803dfd8d4f796616728e515737e5c8263c1d10af8d7925b7e19f198e18e0fe1"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.8/ratchet_darwin_arm64.tar.gz"
      sha256 "d3c36e92fc93cf8a225e2e1eda30c94c7ee5e6c3e2fe46d5cbbc390911501b3c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.8/ratchet_linux_amd64.tar.gz"
      sha256 "2402e317cea31771001f071fc226348c55d5660fed9ef73eee23a30ccaedd8d0"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.8/ratchet_linux_arm64.tar.gz"
      sha256 "559f966d367c27cb59b7f264baad975d16435f7500c8dce97f58fbb7e2f008de"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
