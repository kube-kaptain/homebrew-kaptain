require_relative "../version"

class KaptainUtil < Formula
  desc "Kaptain utility scripts for listing and cleaning secrets and config"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-util-#{version}.zip"
  sha256 "e58dd85df7dd82bb8aa1b612e2b97f32441fdbed0225c09caf48ffd5081f0e5c"
  license "MIT"

  def install
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain-list-secrets", "--help"
  end
end
