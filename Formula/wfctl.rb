class Wfctl < Formula
  desc "CLI for the workflow orchestration engine — validate, inspect, deploy, and manage configs"
  homepage "https://github.com/GoCodeAlone/workflow"
  version "0.3.47"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-darwin-amd64"
      sha256 "cb12ad6552502aa7c5f92f78d1f6b4219690798be192d364e26fc14b8ad7c455"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-darwin-arm64"
      sha256 "be9ffb069259f763542fe7b8c8d7fdca3306e32b970dd6fa43ef4ce7837e7bbf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-linux-amd64"
      sha256 "4e0da5cb23bffa4d62eaf48231e9120e004ef330b815766f44dad2908b30a874"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-linux-arm64"
      sha256 "c5dfef5bc36f9176bdd2edb895bf3340de4053a03ac79f22c5d12b7fd3c22b40"
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
