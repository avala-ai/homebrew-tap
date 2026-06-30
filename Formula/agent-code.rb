class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.23.0/agent-macos-aarch64.tar.gz"
      sha256 "5e4e913d9f161a519f080cc1a0bf4faf87d7b5cea55d2c54e90f3d3c187652b1"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.23.0/agent-macos-x86_64.tar.gz"
      sha256 "7bbb7f40a4b8732cbc55a0ca07845e37fcf8d6b189a9e6c54d4b8abf52e67822"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.23.0/agent-linux-aarch64.tar.gz"
      sha256 "7180f5f0b38a7b394c1890570b76b237a13902b81484b9ffb00fd963e9371dd2"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.23.0/agent-linux-x86_64.tar.gz"
      sha256 "6e5f96b21b5a73dc6956d8f70e6cd24bf05ec160fb728a1da1c83130f21043d7"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.23.0", shell_output("#{bin}/agent --version")
  end
end
