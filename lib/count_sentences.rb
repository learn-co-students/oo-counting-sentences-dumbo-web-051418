require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else 
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end

  end

  def count_sentences
    counter =0
    sent = self.split
    sent.each do |sent|
    if sent.question? | sent.sentence? | sent.exclamation?
      counter +=1
    end
    end
    counter
  end
end