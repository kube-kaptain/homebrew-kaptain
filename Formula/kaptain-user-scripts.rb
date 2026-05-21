require_relative "../version"

class KaptainUserScripts < Formula
  desc "Kaptain user scripts - complete standalone package"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-#{version}.zip"
  sha256 "3856aa674d74195ea99b7bb459bced6caa8ceaff955d245b5d4283fce60f471a"
  license "MIT"

  depends_on "age"
  depends_on "openssl"

  resource "completion" do
    url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{KAPTAIN_VERSION}/kaptain-completion-#{KAPTAIN_VERSION}.bash"
    sha256 "a06c077550b6298cf0f0d08aa56e8915c9d64195b9d5f6ecdb85dad5032b7554"
  end

  def install
    bin.install "kaptain"
    bin.install Dir["kaptain-*"]

    resource("completion").stage do
      bash_completion.install "kaptain-completion-#{version}.bash" => "kaptain"
    end
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
