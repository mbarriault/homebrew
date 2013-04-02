require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Termbox < Formula
  homepage ''
  url 'https://github.com/nsf/termbox/tarball/master'
  sha1 '446b11b2188a63cc28e2f327769b5ce01a017f64'
  version '1'

  depends_on 'cmake' => :build

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    system "cmake", ".", *std_cmake_args
    system "make install" # if this fails, try separate make/make install steps
  end
end
