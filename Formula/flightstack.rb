class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.0/flightstack-1.6.0-macos-arm64.tar.gz"
      sha256 "7dc452b18f03091d602518084980baa2636a9a81f73d9d6fab50106f63204747"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.0/flightstack-1.6.0-macos-x64.tar.gz"
      sha256 "ebb4f7de7f938a7ebbbdd154ca914f46e39786dbfc3d8e885c5f1bbcc72b8c71"
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
