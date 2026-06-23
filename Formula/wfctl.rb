class Wfctl < Formula
  desc "CLI for the workflow orchestration engine — validate, inspect, deploy, and manage configs"
  homepage "https://github.com/GoCodeAlone/workflow"
  version "0.82.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-darwin-amd64"
      sha256 "50eb94277314f535b4507987c8177de840631f34e14951b653422a5a80294895"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-darwin-arm64"
      sha256 "b6bfb55ca52e85e4c593cca585a689fd416929e82eebdd1ea6c283deb9b4a075"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-linux-amd64"
      sha256 "efb22ed2259cde412c7c70e9665177967903c315353bc1cd5e973e2f6c0dccf5"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-linux-arm64"
      sha256 "388f4248a4b0ac8c14f40e846942f95ce87b3536a6917ce4599b9f918c257cef"
    end
  end

  def install
    cpu = Hardware::CPU.intel? ? "amd64" : "arm64"
    os = OS.mac? ? "darwin" : "linux"
    bin.install "wfctl-#{os}-#{cpu}" => "wfctl"
  end

  def post_install
    if OS.mac?
      system "codesign", "--force", "--sign", "-", "#{bin}/wfctl"
    end
  end

  test do
    assert_match "wfctl", shell_output("#{bin}/wfctl --help 2>&1", 0)
  end
end
