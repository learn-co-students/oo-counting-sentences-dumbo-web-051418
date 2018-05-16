require 'pry'

class String

  def sentence?
    return true if self[-1] == '.'
    false
  end

  def question?
    return true if self[-1] == '?'
    false

  end

  def exclamation?
     return true if self[-1] == '!'
    false
  end

  def count_sentences
   self.split(/[.?!]/).select {|sentence| sentence != ""}.count
  end
end