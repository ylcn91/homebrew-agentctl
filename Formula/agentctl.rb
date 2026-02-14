class Agentctl < Formula
  desc "Multi-account AI agent manager with TUI dashboard"
  homepage "https://github.com/ylcn91/agentctl"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ylcn91/agentctl/releases/download/v0.2.0/actl-darwin-arm64.tar.gz"
      sha256 "6f73bbd4968b95ff46b5da600464ee5f00b18847a88d116897f9ac4b0ad19fb7"
    else
      url "https://github.com/ylcn91/agentctl/releases/download/v0.2.0/actl-darwin-x64.tar.gz"
      sha256 "a421984d6e102f03e6cb32fe727f64747592f9b9f82b99f7369a034f994aae18"
    end
  end

  on_linux do
    url "https://github.com/ylcn91/agentctl/releases/download/v0.2.0/actl-linux-x64.tar.gz"
    sha256 "27560334d5e18a957c49903996b8c35b8523bf1f795a14aa98d0d6493ec888e5"
  end

  def install
    bin.install "actl"
    bin.install_symlink "actl" => "agentctl"
  end

  test do
    assert_match "agentctl", shell_output("#{bin}/actl --help")
  end
end
