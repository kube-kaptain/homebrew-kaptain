require_relative "../version"

class KaptainEncryption < Formula
  desc "Kaptain encryption scripts for secret management"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-encryption-#{version}.zip"
  sha256 "79d325687e7e3134ee97a22c517cdc3022568ffbfb3b77c1f265bc73b6cadc77"
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
