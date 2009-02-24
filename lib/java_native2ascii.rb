require('iconv')

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

    arr = str.unpack("U*")
    return out if arr.nil?
    #    arr_s = arr.size
    #    i = 0
    #
    #    while i < arr_s
    #      c = arr[i]
    #      if c > 127
    #        out << sprintf("\\u%04x", c)
    #      else
    #        out << c
    #      end
    #      i+=1
    #    end
    arr.each do |c|
      if c > 127
        out << sprintf("\\u%04x", c)
      else
        out << c
      end
    end
    out
  end

end