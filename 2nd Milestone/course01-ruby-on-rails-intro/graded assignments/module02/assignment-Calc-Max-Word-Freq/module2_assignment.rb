#Implement all parts of this assignment within (this) module2_assignment2.rb file
#Implement a class called LineAnalyzer.
class LineAnalyzer
  #Implement the following read-only attributes in the LineAnalyzer class. 
  #* highest_wf_count - a number with maximum number of occurrences for a single word (calculated)
  #* highest_wf_words - an array of words with the maximum number of occurrences (calculated)
  #* content          - the string analyzed (provided)
  #* line_number      - the line number analyzed (provided)
  attr_reader :highest_wf_count, :highest_wf_words, :content, :line_number
  #Add the following methods in the LineAnalyzer class.
  #* initialize() - taking a line of text (content) and a line number
  #* calculate_word_frequency() - calculates result

  #Implement the initialize() method to:
  #* take in a line of text and line number
  #* initialize the content and line_number attributes
  #* call the calculate_word_frequency() method.
  def initialize(content, line_number)
    @content = content
    @line_number = line_number
    calculate_word_frequency(content)
  end
  #Implement the calculate_word_frequency() method to:
  #* calculate the maximum number of times a single word appears within
  #  provided content and store that in the highest_wf_count attribute.
  #* identify the words that were used the maximum number of times and
  #  store that in the highest_wf_words attribute.
  def calculate_word_frequency(content)
   
    @highest_wf_words= []
    word_freq = Hash.new(0)
    content.downcase.split.each { |word| word_freq[word] += 1 }
    @highest_wf_count = word_freq.values.max
    @highest_wf_words = word_freq.keys.select{|key| word_freq[key] == @highest_wf_count}

   # arr_words.each do|word|
     # word_count = 0
    #  arr_words.each do |word2|
    #    word_count += 1 if word == word2
    #  end
    # # @highest_wf_count = word_count if word_count > @highest_wf_count
    #end
    #arr_words.each do|word|
    #  word_count = 0
    #  arr_words.each do |word2|
    #    word_count += 1 if word == word2
    #  end
    #  @highest_wf_words << word if word_count == @highest_wf_count && !(@highest_wf_words.include?(word))
    #end
 end
end

#  Implement a class called Solution. 
class Solution

  # Implement the following read-only attributes in the Solution class.
  #* analyzers - an array of LineAnalyzer objects for each line in the file
  #* highest_count_across_lines - a number with the maximum value for highest_wf_words attribute in the analyzers array.
  #* highest_count_words_across_lines - a filtered array of LineAnalyzer objects with the highest_wf_words attribute 
  #  equal to the highest_count_across_lines determined previously.
  attr_reader :analyzers, :highest_count_across_lines, :highest_count_words_across_lines

  # Implement the following methods in the Solution class.
  #* analyze_file() - processes 'test.txt' intro an array of LineAnalyzers and stores them in analyzers.
  #* calculate_line_with_highest_frequency() - determines the highest_count_across_lines and 
  #  highest_count_words_across_lines attribute values
  #* print_highest_word_frequency_across_lines() - prints the values of LineAnalyzer objects in 
  #  highest_count_words_across_lines in the specified format
  def initialize()
    @analyzers = []
  end
  # Implement the analyze_file() method() to:
  #* Read the 'test.txt' file in lines 
  #* Create an array of LineAnalyzers for each line in the file
  def analyze_file()
    i=0
    File.foreach('test.txt') do |line| 
      @analyzers << LineAnalyzer.new(line, i)
      i += 1
    end
  end
  # Implement the calculate_line_with_highest_frequency() method to:
  #* calculate the maximum value for highest_wf_count contained by the LineAnalyzer objects in analyzers array
  #  and stores this result in the highest_count_across_lines attribute.
  #* identifies the LineAnalyzer objects in the analyzers array that have highest_wf_count equal to highest_count_across_lines 
  #  attribute value determined previously and stores them in highest_count_words_across_lines.
  def calculate_line_with_highest_frequency()
    @highest_count_words_across_lines = []
    @highest_count_across_lines = @analyzers.max {|line_analyzer1, line_analyzer2| line_analyzer1.highest_wf_count <=> line_analyzer2.highest_wf_count}
                                            .highest_wf_count
    @analyzers.each do |line_analyzer|
      @highest_count_words_across_lines << line_analyzer if line_analyzer.highest_wf_count == @highest_count_across_lines
    end
  end
  #Implement the print_highest_word_frequency_across_lines() method to
  #* print the values of objects in highest_count_words_across_lines in the specified format
  def print_highest_word_frequency_across_lines()
    print "```text\nThe following words have the highest word frequency per line:\n"
    @highest_count_words_across_lines.each do |word|
      print "#{word.highest_wf_words} (appears in line #{word.line_number})\n"
    end
    print "```"
  end
end

hello = Solution.new()
hello.analyze_file
hello.calculate_line_with_highest_frequency
hello.print_highest_word_frequency_across_lines()