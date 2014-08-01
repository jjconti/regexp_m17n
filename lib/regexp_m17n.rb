module RegexpM17N
  def self.non_empty?(str)
    pattern = '^.+$'
    if Encoding.compatible?(str, pattern)
      regex = Regexp.new(pattern.force_encoding(str.encoding), Regexp::FIXEDENCODING)
    else
      regex = Regexp.new(pattern.encode(str.encoding), Regexp::FIXEDENCODING)
    end
    str =~ regex
  end
end
