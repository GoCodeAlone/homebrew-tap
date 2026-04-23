class Wfctl < Formula
  desc "CLI for the workflow orchestration engine — validate, inspect, deploy, and manage configs"
  homepage "https://github.com/GoCodeAlone/workflow"
  version "0.18.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-darwin-amd64"
      sha256 "c1f7bc4d1ab227da84c86eb96e9f7782ca2be7d9a932b23c37fa19e173907a83"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-darwin-arm64"
      sha256 "2f4f09948361e364cfa2de885bd465c2d4763689cafc9aa43e8a61c0fe3ca7ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-linux-amd64"
      sha256 "2cf03f91488ba3c376daef03efe28e5aa8084f204a2e63096a0bde3f15ff2f69"
    end
    on_arm do
      url "https://github.com/GoCodeAlone/workflow/releases/download/v#{version}/wfctl-linux-arm64"
      sha256 "651420ec51288ee7e3eebd455ecb782c9bbb2073949db26c174584f2cacce636"
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
