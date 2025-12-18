class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.26/flightstack-1.2.26-macos-arm64.tar.gz"
      sha256 "e33e34995b32693a2c1ecc7e6f08ca7e285e8bd6aa5a20b317203bac0ec1cc8c"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.26/flightstack-1.2.26-macos-x64.tar.gz"
      sha256 "2828a44d521480e1a112a5b290c7d0622c6545c20ef416fe667dbc32de751b9e"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
