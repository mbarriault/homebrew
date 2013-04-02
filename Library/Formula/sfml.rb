require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Sfml < Formula
	homepage 'http://www.sfml-dev.org/'
	head 'https://github.com/LaurentGomila/SFML.git'

    depends_on 'cmake' => :build
    depends_on 'libsndfile' => :build
    depends_on 'freetype' => :build
    option :universal

	def install
        ENV.universal_binary if build.universal?
		ENV['CC'] = "/usr/bin/clang"
		ENV['CXX'] = "/usr/bin/clang++"
		ENV['CXXFLAGS'] = "-stdlib=libc++ -std=c++11"
		system "cmake . -DCMAKE_INSTALL_FRAMEWORK_PREFIX=#{prefix} #{std_cmake_parameters}"
		system "make install" # if this fails, try separate make/make install steps
	end
end
