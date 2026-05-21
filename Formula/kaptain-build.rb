require_relative "../version"

class KaptainBuild < Formula
  desc "Kaptain build scripts for building projects locally"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-build-#{version}.zip"
  sha256 "9bfa933cff3cf65fce33c267c91c99b1b91078ac0ea03292eaa2f3f7b35129bc"
  license "MIT"

  def install
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain-build", "--help"
  end
end
