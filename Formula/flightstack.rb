class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.45/flightstack-1.2.45-macos-arm64.tar.gz"
      sha256 "219dd7aba051268df8dbf0bad3954faf155544074b7cb33f396fd57600e7aa4a"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.45/flightstack-1.2.45-macos-x64.tar.gz"
      sha256 "a3f20536c77a15e6d28cabe1f7ae051dd68d5a6f0c586e56933e24ec938f09c0"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
