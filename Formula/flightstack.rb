class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.4.0/flightstack-1.4.0-macos-arm64.tar.gz"
      sha256 "16e578b0bb13cf86d738256e39d7fb5980498428999d4a4a9246005ade463756"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.4.0/flightstack-1.4.0-macos-x64.tar.gz"
      sha256 "afd0ed585bb9e788138419789325d415c6301e3b65f043bfa7c0ec7a47c88ba4"
    end
  end

  def install
    bin.install "flightstack"
    bin.install "flightstack-agent"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
