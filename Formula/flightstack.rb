class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.39/flightstack-1.2.39-macos-arm64.tar.gz"
      sha256 "f48db63f2b60d7043f05533d117026060a2c72c338b0bcd7d83c6a364df4f552"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.39/flightstack-1.2.39-macos-x64.tar.gz"
      sha256 "c8057e18fef9ee0b74654af098fdda81966818d82f5a40b44070ceac8439c0cb"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
