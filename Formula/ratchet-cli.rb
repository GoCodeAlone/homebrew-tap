class RatchetCli < Formula
  desc "Interactive AI agent CLI"
  homepage "https://github.com/GoCodeAlone/ratchet-cli"
  version "0.30.33"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.33/ratchet_darwin_amd64.tar.gz"
      sha256 "4938076a32b8e086ebbceb61cff76803486c5f238b730a126ce896b94e8906bc"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.33/ratchet_darwin_arm64.tar.gz"
      sha256 "679b90f875be43513bdbe905619cca75a79262752ef8e43ff6bafec59012a969"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.33/ratchet_linux_amd64.tar.gz"
      sha256 "04cf202ada70cec2577cffe36f79768735b060e04c8d28db9b2d5d961836385a"
    end

    on_arm do
      url "https://github.com/GoCodeAlone/ratchet-cli/releases/download/v0.30.33/ratchet_linux_arm64.tar.gz"
      sha256 "8ddc9646d921c0e64026d0ccd0ca298a925e421876d5404981b347c5a2bb522c"
    end
  end

  def install
    bin.install "ratchet"
  end

  test do
    assert_match "ratchet", shell_output("#{bin}/ratchet --version")
  end
end
