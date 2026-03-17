class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.2/flightstack-1.5.2-macos-arm64.tar.gz"
      sha256 "b0b168bd97db572b85142703e5971aaef8ea97892cb04be7623168fb577037fd"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.2/flightstack-1.5.2-macos-x64.tar.gz"
      sha256 "2cb2ebd12526abff3cadddf12ebea8d480e9503c5720b6d62791c41c37b02af8"
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
