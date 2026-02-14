class Agentctl < Formula
  desc "Multi-account AI agent manager with TUI dashboard"
  homepage "https://github.com/ylcn91/agentctl"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ylcn91/agentctl/releases/download/v0.4.0/actl-darwin-arm64.tar.gz"
      sha256 "916b3679f6b635f627f1075b1ac1faaec2a92016991ca7b76ca6204d5e85974a"
    else
      url "https://github.com/ylcn91/agentctl/releases/download/v0.4.0/actl-darwin-x64.tar.gz"
      sha256 "58d96aaab6debedca44ab7ab5e9cb59e74e2030e9e0b1e448e8249db45502194"
    end
  end

  on_linux do
    url "https://github.com/ylcn91/agentctl/releases/download/v0.4.0/actl-linux-x64.tar.gz"
    sha256 "8023046e3ce37da2693ab143d20876f33d85557d89729f71e95e9fb109704bdf"
  end

  def install
    bin.install "actl"
    bin.install_symlink "actl" => "agentctl"
  end

  test do
    assert_match "agentctl", shell_output("#{bin}/actl --help")
  end
end
