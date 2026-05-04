class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.21.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.21.0/agent-macos-aarch64.tar.gz"
      sha256 "03010dd05c58c8ec38b3c73428a9d3fa2b5765478250ce9c62068c210db56fdf"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.21.0/agent-macos-x86_64.tar.gz"
      sha256 "e21dfe1faa960d2fcba3f7bb81e36fc89763a27195e76f9603ee6bfa348b18e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.21.0/agent-linux-aarch64.tar.gz"
      sha256 "947b42b94e302f63faba92335db86ec3bdc246f0f746a8a63ffab7c27a9028f3"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.21.0/agent-linux-x86_64.tar.gz"
      sha256 "b7993131f64344ae088d11964ba6b3ffbd1c90aca73a032b1b92c4026a7b0528"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.21.0", shell_output("#{bin}/agent --version")
  end
end
