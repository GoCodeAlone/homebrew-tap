class Wfctl < Formula
  desc "CLI for the workflow orchestration engine — validate, inspect, deploy, and manage configs"
  homepage "https://github.com/GoCodeAlone/workflow"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-darwin-amd64"
      sha256 "4ab3f85ab4046d7c83750564e7ddc6a6c15aa41c6801bf0a3dbfc00df6df92e0"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-darwin-arm64"
      sha256 "980c653106393d3bd59118601fda7a0ced9111fc3110d3c336ddfa4ad27fc8d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-linux-amd64"
      sha256 "8d91b3e7b6274c37b42c54a21dd2c2f6536a106c962393a50a4441da94831475"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-linux-arm64"
      sha256 "13fcecc66b50b938bae4fdf9a8bfe7a985d3155a4e2b543ea6d78719352d61d3"
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
