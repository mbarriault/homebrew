require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Tcludp < Formula
  homepage ''
  url 'http://downloads.sourceforge.net/project/tcludp/tcludp/1.0.8/tcludp-1.0.8.tar.gz'
  version '1.0.8'
  sha1 'bd9fcce35a754f9e3df98026fa6b80a03b4ffa8a'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install" # if this fails, try separate make/make install steps
  end

end
