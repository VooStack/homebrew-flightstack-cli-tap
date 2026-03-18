class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.2/flightstack-1.5.2-macos-arm64.tar.gz"
      sha256 "a7ebef1baffc9fc7557b97aa03378b038d5aeebd85c375cd8c35f9335972bfd1"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.2/flightstack-1.5.2-macos-x64.tar.gz"
      sha256 "e1c732ae99621fee8ad9214bbd911312df5454416bac7396e8403dfbff637132"
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
