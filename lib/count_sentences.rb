require 'pry'

class String

  def sentence?
    "." == self[self.length-1]
  end

  def question?
    "?" == self[self.length-1]
  end

  def exclamation?
    "!" == self[self.length-1]
  end

  def count_sentences
    self.split(/[.!?]/).select { |str| str != "" }.count
  end
end
