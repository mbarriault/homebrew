require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Libccd < Formula
  homepage ''
  head 'git://github.com/danfis/libccd.git'

  # depends_on 'cmake' => :build
  depends_on 'cmake' => :build # if your formula requires any X11/XQuartz components
  option :universal

  def install
    # ENV.j1  # if your formula's build system can't parallelize
    ENV.universal_binary if build.universal?

    system "cmake", ".", *std_cmake_args
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test libccd`.
    system "false"
  end
end
