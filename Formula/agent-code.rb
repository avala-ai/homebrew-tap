class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.25.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.3/agent-macos-aarch64.tar.gz"
      sha256 "62ae0ac18be19c4e6813f1e1df7a133ac476c0a6890bd1f378472936759f5451"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.3/agent-macos-x86_64.tar.gz"
      sha256 "220111622ec067c3c3e6d28e5e7f6192b85093d8d6f09a39f2f8bc3f256b293f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.3/agent-linux-aarch64.tar.gz"
      sha256 "bcf3ddcd21df1cca7a8419896284a5f72731014df2276ee36ab8b2496f3c3637"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.3/agent-linux-x86_64.tar.gz"
      sha256 "560379f0d9d877f0313a720b9b8add079569329c8c75547391e8b48fce8219c5"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.25.3", shell_output("#{bin}/agent --version")
  end
end
