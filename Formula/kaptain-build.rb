require_relative "../version"

class KaptainBuild < Formula
  desc "Kaptain build scripts for building projects locally"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-build-#{version}.zip"
  sha256 "2a364b817a3ca3af67b85fc5e5d4f347f563ba970dd07e587ca4b993f6967ef0"
  license "MIT"

  def install
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain-build", "--help"
  end
end
