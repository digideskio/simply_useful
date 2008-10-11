# Mimics Java's native2ascii tool
class JavaNative2Ascii
  def self.ascii2native str
    str.gsub(/\\u[0-9a-f]{4}/i) do |s| 
      out = ""
      i = s[2,4].hex
      out << (i & 0xFF)
      out << (i >> 8)
      out = Iconv.conv("UTF-8", "UNICODE", out)
    end
  end
  
  def self.native2ascii str
    out = ""
    str = Iconv.conv("UNICODE", "UTF-8", str)
    even, last, i = false, 0, 0
    str.each_byte do |b|
      i+=1
      next if i < 3 # skip 2 first characters
      even = !even
      if even
        last = b
        next
      end
      
      if (last > 127 || b > 0)
        out << "\\u" + sprintf("%04X", (b << 8 | last))
      else
        out << last
      end
      
      last = b
    end
    out
  end

end