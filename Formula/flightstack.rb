class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.28/flightstack-1.2.28-macos-arm64.tar.gz"
      sha256 "d5395d8d69145efbedae915e4ccc255a3f037496f650831512dbefa267f64bbd"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.28/flightstack-1.2.28-macos-x64.tar.gz"
      sha256 "7d02747459936947c1efdc8b918dd8bfc9a75b84615a20619f6af13d07a01698"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
