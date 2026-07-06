class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.12"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.12/ratchet_darwin_amd64.tar.gz"
      sha256 "05160b0533232cc417ec7115fd9bcf1d40b8f3f7f35e912d370b76583025c973"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.12/ratchet_darwin_arm64.tar.gz"
      sha256 "926eb60978162c816e42d7fc1a565939fa3980f08e1f51cfe4e665cac0613b9b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.12/ratchet_linux_amd64.tar.gz"
      sha256 "0c9116468874ed3a7f55148491bcf73449a9f0d58f670de490a30c3386de13f4"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.12/ratchet_linux_arm64.tar.gz"
      sha256 "dca6583580a2b071657a990f581da0e9382dc0081273acee22925249fc2e48b7"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
