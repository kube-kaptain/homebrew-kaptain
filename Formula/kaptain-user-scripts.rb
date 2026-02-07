require_relative "../version"

class KaptainUserScripts < Formula
  desc "Kaptain user scripts - complete standalone package"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-#{version}.zip"
  sha256 "1ccba03e69dc9414c90fb2dd206d988eca09cf67c706a4f6ca0aad621191e37e"
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
