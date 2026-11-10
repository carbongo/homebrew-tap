class Syncto < Formula
  desc "Keep git repos in sync by themselves: commit, pull and push"
  homepage "https://github.com/carbongo/syncto"
  url "https://github.com/carbongo/syncto/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "35ded877fd7a3033960d08a6e1fb024fa3141826cd8070bea4cb434379970016"
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
