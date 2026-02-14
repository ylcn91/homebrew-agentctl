class Agentctl < Formula
  desc "Multi-account AI agent manager with TUI dashboard"
  homepage "https://github.com/ylcn91/agentctl"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ylcn91/agentctl/releases/download/v0.5.0/actl-darwin-arm64.tar.gz"
      sha256 "79a47195e0451f3e3ee28739b0b79436e15ec8c667dae6a860278acd1c50175a"
    else
      url "https://github.com/ylcn91/agentctl/releases/download/v0.5.0/actl-darwin-x64.tar.gz"
      sha256 "2c36efd69603f4a023ac68422874da86986ec8f2c495528abe91218ce881c699"
    end
  end

  on_linux do
    url "https://github.com/ylcn91/agentctl/releases/download/v0.5.0/actl-linux-x64.tar.gz"
    sha256 "ee0e59181bd63866ac4e239ef15b01978d01a22e49e0adb3228847885ea24754"
  end

  def install
    bin.install "actl"
    bin.install_symlink "actl" => "agentctl"
  end

  test do
    assert_match "agentctl", shell_output("#{bin}/actl --help")
  end
end
