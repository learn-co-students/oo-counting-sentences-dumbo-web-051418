require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def lose_empties(array)
    # helper method for 'count_sentences' to remove empty strings
    array.reject{|element| element.empty?}
  end

  def count_sentences
    # counts sentences demarcated at declared punctuation
    lose_empties(self.split(/[?.!]/)).size 
  end
end

#Pry.start
