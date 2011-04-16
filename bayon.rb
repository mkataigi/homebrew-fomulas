require 'formula'

class Bayon < Formula
  url 'http://bayon.googlecode.com/files/bayon-0.1.0.tar.gz'
  version '0.1.0'
  homepage 'http://code.google.com/p/bayon/'
  sha1 'c542ebc5686ea0ee22da827017518ff755d6f396'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
