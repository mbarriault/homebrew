require 'formula'

class Assimp3 < Formula
  homepage 'http://assimp.sourceforge.net/'
  url 'http://sourceforge.net/projects/assimp/files/assimp-3.0/assimp--3.0.1270-source-only.zip'
  version '3.0.1270'
  sha1 'e80a3a4326b649ed6585c0ce312ed6dd68942834'

  depends_on 'cmake' => :build
  depends_on 'boost'

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end

  def test
    system "#{bin}/assimp", "version"
  end
end
