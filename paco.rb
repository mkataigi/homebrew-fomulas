require 'formula'

class Paco < Formula
  url 'http://downloads.sourceforge.net/project/paco/paco/2.0.8/paco-2.0.8.tar.gz'
  version '2.0.8'
  homepage 'http://paco.sourceforge.net/'
  md5 '653c701c3584b57d596152b44e109095'

  depends_on "gtkmm"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
