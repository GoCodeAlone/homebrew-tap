class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.32"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.32/ratchet_darwin_amd64.tar.gz"
      sha256 "22d7e9aa861491cee5ea7e1515c7223de97f938868cf125e687849084b28081e"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.32/ratchet_darwin_arm64.tar.gz"
      sha256 "a4f7c80b99288fd4ed11fbaaa7d992697088d65b14902b3dc7244c69e73a8a26"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.32/ratchet_linux_amd64.tar.gz"
      sha256 "14d4bff2bb34caded186989015a44e474e4d1db067cb9f7f7fb914bf409e9a67"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.32/ratchet_linux_arm64.tar.gz"
      sha256 "fb47cca2d6aebc787546385d91bfea07304086d5fc700f6d0bc527496d65a4d1"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
