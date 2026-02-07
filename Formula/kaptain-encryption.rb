require_relative "../version"

class KaptainEncryption < Formula
  desc "Kaptain encryption scripts for secret management"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-encryption-#{version}.zip"
  sha256 "015d53002e4224265930a8af65ef80f7f81eee139b27f868ece32a3cf8703c5c"
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
