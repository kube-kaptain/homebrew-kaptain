require_relative "../version"

class KaptainEncryption < Formula
  desc "Kaptain encryption scripts for secret management"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-encryption-#{version}.zip"
  sha256 "8ba315cb52dca1ce07b87d7780278de3e640f7e48203e560d559d3b7a8bde805"
  license "MIT"

  depends_on "age"
  depends_on "openssl"

  def install
    bin.install Dir["scripts/*"]
  end

  test do
    system "#{bin}/kaptain-encrypt-age", "--help" rescue nil
  end
end
