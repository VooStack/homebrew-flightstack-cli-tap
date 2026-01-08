class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.53/flightstack-1.2.53-macos-arm64.tar.gz"
      sha256 "56dcc521bb9d69576bc5f80eef3880079774dd400f0e62e537a75d8de57bc1b2"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.53/flightstack-1.2.53-macos-x64.tar.gz"
      sha256 "d95f93a1f125d2f68841751295bf25c2f0ab495090cc3495de1d6cbef1718a46"
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
