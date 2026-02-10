require_relative "../version"

class KaptainUserScripts < Formula
  desc "Kaptain user scripts - complete standalone package"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-#{version}.zip"
  sha256 "a6475a7d23d9d1ddfab1be319f7c3160e513280c26f9faa3f1c73d4bb11730a1"
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
