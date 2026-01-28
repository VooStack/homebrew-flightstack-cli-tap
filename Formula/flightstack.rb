class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.66"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.66/flightstack-1.2.66-macos-arm64.tar.gz"
      sha256 "be3df29364e225720f2bf3cabf8eea37b38104207b9dd6737cf2a265064141e7"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.66/flightstack-1.2.66-macos-x64.tar.gz"
      sha256 "46f98edd6c6c20ac43f5a368e0a31fb17fef50471b8ad83662ff2db5713e405a"
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
