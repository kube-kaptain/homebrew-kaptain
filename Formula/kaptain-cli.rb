require_relative "../version"

class KaptainCli < Formula
  desc "Kaptain CLI wrapper for Kubernetes deployment workflows"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "fe6cf26f0a657376985c6fbd9a4db6e05eaa1f410824622edbe8787c640e8f11"
  license "MIT"

  resource "completion" do
    url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{KAPTAIN_VERSION}/kaptain-completion-#{KAPTAIN_VERSION}.bash"
    sha256 "197473267d6d22ec71737b9c20b0fd3c63fbd88839d53dbebc5749ac55822a1d"
  end

  def install
    bin.install "kaptain"
    bin.install "kaptain-list"
    bin.install "kaptain-help"
    bin.install "kaptain-clean"

    resource("completion").stage do
      bash_completion.install "kaptain-completion-#{version}.bash" => "kaptain"
    end
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
