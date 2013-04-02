require 'formula'

class Libmesh < Formula
  url 'http://sourceforge.net/projects/libmesh/files/libmesh/libmesh-0.7.2/libmesh-0.7.2.tar.gz'
  homepage 'http://libmesh.sourceforge.net/'
  md5 'e6abf7e47b5d43b766abea764ae32a6c'

  # depends_on 'cmake'

  def install
    system "mv libmesh/* ."
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just
    # replace "false" with the main program this formula installs, but
    # it'd be nice if you were more thorough. Test the test with
    # `brew test libmesh`. Remove this comment before submitting
    # your pull request!
    system "false"
  end
end
