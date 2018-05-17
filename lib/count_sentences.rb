require 'pry'

class String

  def sentence?
    self.split("").last == '.'
  end

  def question?
    self.split("").last == "?"
  end

  def exclamation?
    self.split("").last == "!"
  end

  def count_sentences
    sent_count = 0
    words = self.split(" ")
      words.each do |word|
    sent_count += 1 if word.sentence? || word.question? || word.exclamation?
      end
    sent_count
  end
end
