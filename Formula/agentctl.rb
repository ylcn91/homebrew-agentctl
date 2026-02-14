class Agentctl < Formula
  desc "Multi-account AI agent manager with TUI dashboard"
  homepage "https://github.com/ylcn91/agentctl"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ylcn91/agentctl/releases/download/v0.1.0/actl-darwin-arm64.tar.gz"
      sha256 "80ba6b3992d814c598ec15fa18713a2a53ae71adaa848f69989dd672d4b2b032"
    else
      url "https://github.com/ylcn91/agentctl/releases/download/v0.1.0/actl-darwin-x64.tar.gz"
      sha256 "243efcf39725f01212dfd5fc6d5dd6263d504e902ac0a87503d4c898f51eb372"
    end
  end

  on_linux do
    url "https://github.com/ylcn91/agentctl/releases/download/v0.1.0/actl-linux-x64.tar.gz"
    sha256 "9bbb8fd5408e7f1c4beff0e313fe404877bee4eb5bd8d6e3470aedf2b5b8e34f"
  end

  def install
    bin.install "actl"
    bin.install_symlink "actl" => "agentctl"
  end

  test do
    assert_match "agentctl", shell_output("#{bin}/actl --help")
  end
end
