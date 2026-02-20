class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.9/flightstack-1.3.9-macos-arm64.tar.gz"
      sha256 "935e3f101bf240153db9c2b401dfb056aa2ef57ac5485edd43041557fb525e4c"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.9/flightstack-1.3.9-macos-x64.tar.gz"
      sha256 "fba6c8e06a65b2da9c89cc9e6bd9ef095ecd32f982d9a89f4b8486aba43fdfa4"
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
