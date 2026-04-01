class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.9.2/agent-macos-aarch64.tar.gz"
      sha256 "f798f1389b7f8662521bf0428fef717d1a8c452b8dc1e6316a85ad255fda439c"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.9.2/agent-macos-x86_64.tar.gz"
      sha256 "e4bdffa1de4eee92e8138c1996c782a520c8c48effeae0f8113f8b23c8008b8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.9.2/agent-linux-aarch64.tar.gz"
      sha256 "c43f5e7a1dc46e4cf17cc23e882c0dba27c1cc0805ab1a9141758fa4b9194edb"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.9.2/agent-linux-x86_64.tar.gz"
      sha256 "d762efb2e541eddd29353767736a72ad7730b35edad7f7dbdcf8ce25399a527b"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.9.2", shell_output("#{bin}/agent --version")
  end
end
