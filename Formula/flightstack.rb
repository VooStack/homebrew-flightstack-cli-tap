class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.10/flightstack-1.5.10-macos-arm64.tar.gz"
      sha256 "ce45b041c0d3d0813653a7d680cfcd0a22d6bccc13ddb1d8e8a597f4dc35a838"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.10/flightstack-1.5.10-macos-x64.tar.gz"
      sha256 "395ccb3eff90dc8570ed4f22c81e6bf2c9f79b744cf4bf1791d16ef1eda83fbb"
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
