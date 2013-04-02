require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Mvthimage < Formula
  homepage 'https://github.com/sbromle/MvthImage'
  head 'git://github.com/sbromle/MvthImage.git'
  sha1 ''

  depends_on 'cmake' => :build
  option :universal

  def install
    ENV.universal_binary if build.universal?
    system "cmake", "-DBUILD_MVTHIMAGE=NO", ".", *std_cmake_args
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test MvthImage`.
    system "false"
  end
end
