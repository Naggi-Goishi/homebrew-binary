require 'formula'

class Kindlegen < Formula
  homepage 'http://www.amazon.com/gp/feature.html?docId=1000765211'
  url 'http://kindlegen.s3.amazonaws.com/KindleGen_Mac_i386_v2_9.zip'
  sha256 '851064ef18687edaf93abd781f9711a2cb293f7d'

  def install
    bin.install 'kindlegen'
  end

  test do
    system "#{bin}/kindlegen"
  end

  def caveats
    <<-EOS.undent
      We agreed to the KindleGen License Agreement for you by downloading KindleGen.
      If this is unacceptable you should uninstall.

      License information at:
      #{homepage}
    EOS
  end
end
