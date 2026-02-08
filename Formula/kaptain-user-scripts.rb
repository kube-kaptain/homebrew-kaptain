require_relative "../version"

class KaptainUserScripts < Formula
  desc "Kaptain user scripts - complete standalone package"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-#{version}.zip"
  sha256 "7377c996de0b459247bb3d4d96e6a30216167e432aa9b09d5c276d9436b49030"
  license "MIT"

  depends_on "age"
  depends_on "openssl"

  def install
    bin.install "kaptain"
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
