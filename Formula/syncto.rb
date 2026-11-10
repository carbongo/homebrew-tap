class Syncto < Formula
  desc "Keep git repos in sync by themselves: commit, pull and push"
  homepage "https://github.com/carbongo/syncto"
  url "https://github.com/carbongo/syncto/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "5754b3a0219b15d98df5e07e92e5e56c89435c0ac078b5b22c07c044119a4122"
  license "MIT"

  def install
    libexec.install "syncto.sh"
    bin.install_symlink libexec/"syncto.sh" => "syncto"
    pkgshare.install "config.example", "targets.example"
  end

  test do
    assert_match "syncto #{version}", shell_output("#{bin}/syncto version")
  end
end
