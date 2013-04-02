require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Togl < Formula
  homepage ''
  url 'http://sourceforge.net/projects/togl/files/Togl/2.0/Togl2.0-src.tar.gz'
  version '2.0'
  sha1 '7ebb028a75f733d0ac2dca851e23c03f33cc4843'

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install" # if this fails, try separate make/make install steps
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test Togl2.0`.
    system "false"
  end
end
