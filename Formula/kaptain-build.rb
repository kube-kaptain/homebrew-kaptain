require_relative "../version"

class KaptainBuild < Formula
  desc "Kaptain build scripts for building projects locally"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-build-#{version}.zip"
  sha256 "2d6669fbb01aebd91b2a0e2846c78028284b48661e8af5160427f5fb1ddd626f"
  license "MIT"

  def install
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain-build", "--help"
  end
end
