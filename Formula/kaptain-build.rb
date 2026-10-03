require_relative "../version"

class KaptainBuild < Formula
  desc "Kaptain build scripts for building projects locally"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-build-#{version}.zip"
  sha256 "8cccb6eec0bee5449316bd893287cdf36aaf293746c682e9b95f6a38367077b3"
  license "MIT"

  def install
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain-build", "--help"
  end
end
