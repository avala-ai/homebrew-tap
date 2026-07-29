class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.30.0/agent-macos-aarch64.tar.gz"
      sha256 "401e8e3a25bbcc071b6c624771a36323479337649c873f5b99b59ec7c03fe1fb"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.30.0/agent-macos-x86_64.tar.gz"
      sha256 "52fe6bbaf2db973c5b1a1e328f5a812094a418e81ea145609932395c9f5b82de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.30.0/agent-linux-aarch64.tar.gz"
      sha256 "e129f817c5720a44adc0080980e4842a1fe6c0e3b340f1932128360f3cc9887a"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.30.0/agent-linux-x86_64.tar.gz"
      sha256 "172b6a7ca5bdce76bb2ed023392c65edc1c0c0a694cd93fdac66966ad2d9d25c"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.30.0", shell_output("#{bin}/agent --version")
  end
end
