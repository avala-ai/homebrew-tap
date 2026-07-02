class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.24.0/agent-macos-aarch64.tar.gz"
      sha256 "12621318eb44a3e14e3e3b352aaa8849c8b68191da5a191c779bb3a09cfa89fb"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.24.0/agent-macos-x86_64.tar.gz"
      sha256 "fb73eaa398908062c22202b77da0fac727d9f0d96ff2a3b17d0402f10cf13e5a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.24.0/agent-linux-aarch64.tar.gz"
      sha256 "008f74f4a87919abe9143f38552dd278d19b952d244182c9dbac22fbd6c10db4"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.24.0/agent-linux-x86_64.tar.gz"
      sha256 "53abcfcd927cbf4930afd0275f49da49674941a50db5b33be75131838c57d435"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.24.0", shell_output("#{bin}/agent --version")
  end
end
