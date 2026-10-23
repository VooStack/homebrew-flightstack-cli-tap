class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.13/flightstack-1.5.13-macos-arm64.tar.gz"
      sha256 "5e78069e8711e6b15a91d548337d4441d2421a001c5dd34c37f2ea11936ea318"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.13/flightstack-1.5.13-macos-x64.tar.gz"
      sha256 "81adb41526c8f1d5adad7a3c6ba95e34bffbe2e9813d83b8fd1fc18342f81fc4"
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
