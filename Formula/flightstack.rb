class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.0/flightstack-1.6.0-macos-arm64.tar.gz"
      sha256 "803f3bad7bb47e3faf6729ca3fbda9eea67dccdb3522d2ae745fe621d1fd4761"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.0/flightstack-1.6.0-macos-x64.tar.gz"
      sha256 "d1bf10841f407f62c616e20fad30083aa11f77d5e97bfb9179c28a59e60bcc57"
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
