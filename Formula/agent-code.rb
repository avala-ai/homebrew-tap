class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.15.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.2/agent-macos-aarch64.tar.gz"
      sha256 "6697bed17bf0b0e72aa163ebe90c5108514d3b0494d035c85f138d898cc48f46"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.2/agent-macos-x86_64.tar.gz"
      sha256 "1657c382f7c95ac57f50a4a3ee11212606c22e7209f55ac1a60b0cdde0393b9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.2/agent-linux-aarch64.tar.gz"
      sha256 "8d61c163a0cac81990f5ab5e83c7e4e3f389576bd223f83481c129cf99740476"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.2/agent-linux-x86_64.tar.gz"
      sha256 "2ab06b433df84966cc169a305662078974dbdf737e3815d6ba06249d230c9b5e"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.15.2", shell_output("#{bin}/agent --version")
  end
end
