require_relative "../version"

class KaptainEncryption < Formula
  desc "Kaptain encryption scripts for secret management"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-encryption-#{version}.zip"
  sha256 "de1eaac9d5d9413757db6ecc0725759248c956b30fa04e04778ba6d9f95d43b9"
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
