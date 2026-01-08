class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.54/flightstack-1.2.54-macos-arm64.tar.gz"
      sha256 "e4f04a544577a0f67982a472ec38fac30f123413d9ea3211a6c2bb735004e53e"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.54/flightstack-1.2.54-macos-x64.tar.gz"
      sha256 "418e846b4b727b301faf6245a6de1512fa106bfacd62eb0266433057f1149cea"
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
