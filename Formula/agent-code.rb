class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.16.0/agent-macos-aarch64.tar.gz"
      sha256 "8119c2eb0157f7c09ee1f6d14f5d51b21f5ecc77cf72b07626d6ea54d2d8287c"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.16.0/agent-macos-x86_64.tar.gz"
      sha256 "a04a7bd9c16597414fc8cb2d7810527da122e40f7bf8560622e100f306ea7eb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.16.0/agent-linux-aarch64.tar.gz"
      sha256 "717aead3c38d429e8c306b4d12b594ee78251c0d3a891e13c1041fe092df225a"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.16.0/agent-linux-x86_64.tar.gz"
      sha256 "d36fc8a3b8a0a80be71df2c6e30cdc763869cdba3607a9d5ea5080f70ad72e2e"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.16.0", shell_output("#{bin}/agent --version")
  end
end
