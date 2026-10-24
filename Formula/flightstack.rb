class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.0/flightstack-1.6.0-macos-arm64.tar.gz"
      sha256 "85a3f5c1f30d56db6ed188b4e4944e021a5c4d46898ec18731e21dda9f52eba7"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.0/flightstack-1.6.0-macos-x64.tar.gz"
      sha256 "a65e18d3791a7490229f69c84d1bea33a5a997db945415ef9a168523c4bf9608"
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
