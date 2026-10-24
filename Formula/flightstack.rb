class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.3/flightstack-1.6.3-macos-arm64.tar.gz"
      sha256 "c395ffa48575ccdfed3e842a6f0ea7ced3a73a0c5a218d64907a4aa0d35f52fb"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.3/flightstack-1.6.3-macos-x64.tar.gz"
      sha256 "f40b8d3c73e02088b649df9a517e3abd6353d2e04e8e49e43c8bc22eb765b67d"
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
