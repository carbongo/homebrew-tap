class Syncto < Formula
  desc "Keep git repos in sync by themselves: commit, pull and push"
  homepage "https://github.com/carbongo/syncto"
  url "https://github.com/carbongo/syncto/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "cc52f80d99503a5cf1912ec09c2fe656cffc606b5ca4c59daa978caeebc47906"
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
