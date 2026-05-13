class Wfctl < Formula
  desc "CLI for the workflow orchestration engine — validate, inspect, deploy, and manage configs"
  homepage "https://github.com/GoCodeAlone/workflow"
  version "0.51.8"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-darwin-amd64"
      sha256 "2c9316b0b63cf026aed58b80ac40ff5d283cf743ecba247890772ee0dccec541"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-darwin-arm64"
      sha256 "3c2d3ebaa0c3c6b4e34a8770f9410e13ce0c1ef936ae5628b30d4d54d942cc16"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-linux-amd64"
      sha256 "e5ad56153fed26db831d76cfe1b76831024285635f2e4e05592d5bb3002c5307"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-linux-arm64"
      sha256 "90d126c51b941e5df3cb9307947ff97fce25a9ef1f900ad35075c6549065954c"
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
