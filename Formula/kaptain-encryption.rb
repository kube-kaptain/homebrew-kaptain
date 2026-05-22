require_relative "../version"

class KaptainEncryption < Formula
  desc "Kaptain encryption scripts for secret management"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-encryption-#{version}.zip"
  sha256 "145f77cb210051225ed942f44a68d3fdb5eaed0abb6e5c6205cd2d6373154e00"
  license "MIT"

  depends_on "age"
  depends_on "openssl"

  def install
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain-encrypt-age", "--help" rescue nil
  end
end
