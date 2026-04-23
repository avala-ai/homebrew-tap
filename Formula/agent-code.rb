class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.17.0/agent-macos-aarch64.tar.gz"
      sha256 "b3622f8ab73c6a0690f10d34936b7e41b8f48af4ea7136b21e5892aa64645ba4"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.17.0/agent-macos-x86_64.tar.gz"
      sha256 "f19cc0b2b94d2220cdf90e2183ef5d8563e2e15e56ba597c63b05d2de2feaba5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.17.0/agent-linux-aarch64.tar.gz"
      sha256 "3a8e183fedc3e32cc3bd119585b2d33a0ee863e5725dacf863e4f74bd26e9f2b"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.17.0/agent-linux-x86_64.tar.gz"
      sha256 "c504553d1d155ba85b18f6c238fc09e8ab7137411c2f01ac7f185ac03a7a8a42"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.17.0", shell_output("#{bin}/agent --version")
  end
end
