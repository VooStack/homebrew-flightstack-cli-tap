class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.43/flightstack-1.2.43-macos-arm64.tar.gz"
      sha256 "a0d91877552e3ef9293aab1a5781654ab2088090c4e6e513f5823f1a72c86a8d"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.43/flightstack-1.2.43-macos-x64.tar.gz"
      sha256 "65ddcc2e354067e89418ae2315987457105942726b368ce8ee660cc74096c00e"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
