require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    if self.sentence? == true || self.question? == true || self.exclamation? == true
      split_sentence = self.split(/[.?!]/)
      split_sentence.reject {|element| element.empty?}.length
    else
      0
    end
  end
end
