class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack/releases/download/cli-v1.1.0/flightstack-1.1.0-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64_SHA256"
    end
    on_intel do
      url "https://github.com/voostack/flightstack/releases/download/cli-v1.1.0/flightstack-1.1.0-macos-x64.tar.gz"
      sha256 "PLACEHOLDER_X64_SHA256"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
