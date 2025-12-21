class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.40/flightstack-1.2.40-macos-arm64.tar.gz"
      sha256 "7c4984fc33ffdf62949d8a8da9194dbfdeb314096055bb010654238b838ed5ce"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.40/flightstack-1.2.40-macos-x64.tar.gz"
      sha256 "d3c09c2148e5766d65cbdc6f8ecfd30f6dd91b0c798d05853945644343919737"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
