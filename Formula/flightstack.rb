class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.7/flightstack-1.5.7-macos-arm64.tar.gz"
      sha256 "89b682ca6fa76c4ff87526f461738ce3125d5cea4d69f4d2ea035a051eed390a"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.7/flightstack-1.5.7-macos-x64.tar.gz"
      sha256 "169ec04a81766ad169a10fe04ff494c41318d46847e7f2accd3db96ff7cd21e0"
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
