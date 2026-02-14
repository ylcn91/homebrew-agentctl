class Agentctl < Formula
  desc "Multi-account AI agent manager with TUI dashboard"
  homepage "https://github.com/ylcn91/agentctl"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ylcn91/agentctl/releases/download/v0.3.0/actl-darwin-arm64.tar.gz"
      sha256 "e709732570ab9990d6a3f7b67a4675f315199c7a4349eb0eab51e697ca9c7d5d"
    else
      url "https://github.com/ylcn91/agentctl/releases/download/v0.3.0/actl-darwin-x64.tar.gz"
      sha256 "f3640df2cccdc7aa6097ee3b54cba59f535db1198912bb78d69e61b377d433a3"
    end
  end

  on_linux do
    url "https://github.com/ylcn91/agentctl/releases/download/v0.3.0/actl-linux-x64.tar.gz"
    sha256 "f7b75edefcb8e90004ac9396cd0139f25e9407fffb128aded4c73a27518b794f"
  end

  def install
    bin.install "actl"
    bin.install_symlink "actl" => "agentctl"
  end

  test do
    assert_match "agentctl", shell_output("#{bin}/actl --help")
  end
end
