class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.20"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.20/ratchet_darwin_amd64.tar.gz"
      sha256 "3677c65400000c28143f94e95ceabe422ff0a881f0916ccc17c085fe4926da08"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.20/ratchet_darwin_arm64.tar.gz"
      sha256 "c2372d1838709ddf1161179ed2340022b621bc5db3dd1f24dab9dce38f9b2829"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.20/ratchet_linux_amd64.tar.gz"
      sha256 "f077fc683badea0b2ac9b57369a1ccd897982d9f5bf08a8bd571691a52bf1301"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.20/ratchet_linux_arm64.tar.gz"
      sha256 "8e95b674c23fab499a9ee849eefb510feddf36bc05d685c5c54472a2e37f0be8"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
