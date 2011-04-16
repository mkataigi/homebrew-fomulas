require 'formula'

class Crfpp < Formula
  url 'http://jaist.dl.sourceforge.net/project/crfpp/crfpp/0.54/CRF%2B%2B-0.54.tar.gz'
  version '0.54'
  homepage 'http://sourceforge.net/projects/crfpp/'
  md5 'a3c12c99b25e06d18147d50f0f92e8d3'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
