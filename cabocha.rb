require 'formula'

class Cabocha < Formula
  url 'http://downloads.sourceforge.net/project/cabocha/cabocha/0.60pre4/cabocha-0.60pre4.tar.bz2'
  version '0.60pre4'
  homepage 'http://sourceforge.net/projects/cabocha/'
  md5 '8efd6846e75703695e3f8a912e111171'

  depends_on "libiconv"
  depends_on "mecab"
  depends_on "crfpp"

  def install
    old_libs = ENV['LIBS']
    ENV['LIBS'] = "-liconv"
    system "./configure", "--prefix=#{prefix}", "--with-charset=UTF8"
    ENV['LIBS'] = old_libs

    system "make"
    system "make install"
  end
end
