class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.23/flightstack-1.2.23-macos-arm64.tar.gz"
      sha256 "9cc32ec70c00770842464f193faf9d046d1c0f3a054d52ab6680109caee6747b"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.23/flightstack-1.2.23-macos-x64.tar.gz"
      sha256 "44a07413d0300cedb268712d5be2107ea93beb3b9282c195881a7669a395bbc1"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
