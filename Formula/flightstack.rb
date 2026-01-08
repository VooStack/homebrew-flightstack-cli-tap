class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.50/flightstack-1.2.50-macos-arm64.tar.gz"
      sha256 "9027e844666efba6c4033d31694e954aa1a20d39fd2e2a54de606a9d8bfc2073"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.50/flightstack-1.2.50-macos-x64.tar.gz"
      sha256 "698a64b2b70676fcbc4e4d8458450275e3288da89fb03ac21475e21fb3063c65"
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
