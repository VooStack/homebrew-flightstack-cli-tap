class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.4/flightstack-1.6.4-macos-arm64.tar.gz"
      sha256 "0d5d9203e2f8125ce93208bc37963fa9f162d4d79d22de72bf36f1af7228c275"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.4/flightstack-1.6.4-macos-x64.tar.gz"
      sha256 "102d1c7467dd98302497498b1dca3d85475220017cf2a47d5936c3124bc7bc9c"
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
