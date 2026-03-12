class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.1/flightstack-1.5.1-macos-arm64.tar.gz"
      sha256 "6b08bb22c2ee88401132e43bd233ef00268fe150782ec1b53d781ac4d1326c40"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.1/flightstack-1.5.1-macos-x64.tar.gz"
      sha256 "757c7ce1f8a730dd23bf0de7925107c145f13ed752502d804ecd4fecf285a9ef"
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
