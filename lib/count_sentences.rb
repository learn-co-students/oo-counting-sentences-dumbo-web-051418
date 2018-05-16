require 'pry'

class String

  def sentence?
    self.end_with? (".")
  end

  def question?
    self.end_with? ("?")
  end

  def exclamation?
    self.end_with? ("!")
  end

  def count_sentences
   self.squeeze.split(/[.?!]/).size
  end
end

test = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."

test.count_sentences