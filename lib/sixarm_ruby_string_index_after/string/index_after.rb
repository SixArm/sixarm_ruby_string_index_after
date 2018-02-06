# -*- coding: utf-8 -*-
=begin rdoc
String#index_after.
=end

class String

  # Return the index immediately after the first occurrence 
  # of the given substring orpattern (regexp) in str. 
  #
  # Return nil if not found. 
  #
  # The `target` parameter can be a string or a pattern (regexp).
  # 
  # The `offset` parameter specifies the position in the string 
  # to begin the search; the default is 0 i.e. the string start.
  #
  # Examples:
  #
  #     "hello".index_after("ll") => 4
  #
  #     "hello".index_after(/[eo]/) => 2
  #
  def index_after(target, offset = 0)
    i = index(target, offset)
    return nil if nil == i
    length = case target
    when String
      target.length
    when Regexp
      m = match(target, offset)
      m ? m.to_s.length : nil
    else
      raise ArgumentError
    end
    return i + length
  end

end
