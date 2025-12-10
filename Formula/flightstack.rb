class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.18/flightstack-1.2.18-macos-arm64.tar.gz"
      sha256 "cd7e7cf44d12c53680b8df1b36ad9b6e9e40ce7319dcfc86a55a4a06ce2203f3"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.18/flightstack-1.2.18-macos-x64.tar.gz"
      sha256 "33098038133f749e1c81bff0325468b1677da92812a2e87f3ba0a6c6c61ce43e"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
