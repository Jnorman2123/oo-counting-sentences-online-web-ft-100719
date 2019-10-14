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

  def count_sentences
    split_sentence = []
    split_sentence = self.split(/[!?.]/)
    split_sentence.reject{ |string| string.nil?}
    return split_sentence.count
    # binding.pry
  end
end
