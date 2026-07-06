class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.24"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.24/ratchet_darwin_amd64.tar.gz"
      sha256 "e5c6e6b63150f43febe7044ed072a011730cf09411e016f403055f56d7c4710d"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.24/ratchet_darwin_arm64.tar.gz"
      sha256 "d814aa27a84ed6e641cfa2531a4d8b3dd01b7a73cbdcdb8a5a0ed3b1144238ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.24/ratchet_linux_amd64.tar.gz"
      sha256 "64bfce77f697e4eda3a10240a02180c84c49795809ebc11d1bd67191db87f6fd"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.24/ratchet_linux_arm64.tar.gz"
      sha256 "8a870fee0bfaeef7145a91cda26e1fe98304863131e3d59c8ed15928edda0084"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
