class Syncto < Formula
  desc "Keep git repos in sync by themselves: commit, pull and push"
  homepage "https://github.com/carbongo/syncto"
  url "https://github.com/carbongo/syncto/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "a8a0ee6d21296284d1f656ce0132fda726811a41f589bf623065239182910ef3"
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
