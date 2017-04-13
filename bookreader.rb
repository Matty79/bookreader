require 'net/http'
require 'uri'
require 'mathn'

TEXT_URL = 'http://www.loyalbooks.com/download/text/Railway-Children-by-E-Nesbit.txt'

def open(url)
  Net::HTTP.get(URI.parse(url))
end

def count(text)
  @h = {}
  text.each_line do |line|
    words = line.split
    words.each do |word|
      word = word.downcase.gsub(/[^a-z0-9\s]/i, '')
      @h[word] = @h.key?(word) ? @h[word] + 1 : @h[word] = 1
    end
  end
end

def sort(h)
  h.sort_by { |_k, v| v }.reverse.each do |elem|
    result = "\"#{elem[0]}\" occurs #{elem[1]} time"
    if elem[1].prime?
      puts result + 's, which is a prime number'
    elsif elem[1] != 1
      puts result + 's'
    else
      puts result
    end
  end
end

text = open(TEXT_URL)
count(text)
sort(@h)
