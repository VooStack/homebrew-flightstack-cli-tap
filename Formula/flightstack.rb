class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.5/flightstack-1.5.5-macos-arm64.tar.gz"
      sha256 "2b2760b5471cd674e9e2f25d23ad91a10667846da136623fe1dafe695e2e6079"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.5/flightstack-1.5.5-macos-x64.tar.gz"
      sha256 "def2f3611a5872267a5f571ca82236c36f675342ede8c0e474da19b91171f959"
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
