require_relative "../version"

class KaptainBuild < Formula
  desc "Kaptain build scripts for building projects locally"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-build-#{version}.zip"
  sha256 "15379b97112169d5877d2f8ec83d9958246f885041072992aa4dc86553706191"
  license "MIT"

  def install
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain-build", "--help"
  end
end
