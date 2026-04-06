class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.13.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.13.1/agent-macos-aarch64.tar.gz"
      sha256 "f8861e6ca123dcb5c785490a2bd2de63033bf841e9708e828480462d775350a7"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.13.1/agent-macos-x86_64.tar.gz"
      sha256 "ea0b183b578b015e58e2886aefc2fc4a86a8bd08fa5f3b660bf77c0273363906"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.13.1/agent-linux-aarch64.tar.gz"
      sha256 "bd354c4885943ca520a1e8de3cc1d30c588a6210ef4f3196b9212ad942f397f2"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.13.1/agent-linux-x86_64.tar.gz"
      sha256 "bb849d4ad3b19f28c3847a34ea5422b1382cdf2bf2664af35adad602df6938da"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.13.1", shell_output("#{bin}/agent --version")
  end
end
