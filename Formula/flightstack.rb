class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.60"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.60/flightstack-1.2.60-macos-arm64.tar.gz"
      sha256 "58890ac028a12974015c88f8aeab062bf9ffa756096b64bfe1127b3aefba0172"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.60/flightstack-1.2.60-macos-x64.tar.gz"
      sha256 "04764839b7a07e72a51196dd0c15dc08a0515e07c43494b6136ca73f9a5316ca"
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
