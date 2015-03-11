class Libmbdb < Formula
  homepage ""
  url "https://github.com/Hexxeh/libmbdb.git", :using => :git, :revision => "5996ec5"
  version "1"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "openssl" => :build
  depends_on "libcrippy" => :build

  def install
    system "sh autogen.sh"
    system "./configure --prefix=#{prefix}"
    system "make install"
  end
end
