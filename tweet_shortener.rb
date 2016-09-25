def dictionary
  hashtionary = {
    :hello => "hi",
    :to => "2",
    :too => "2",
    :two => "2",
    :four => "4",
    :for => '4',
    :be => "b",
    :you => "u",
    :at => "@",
    :and => "&"
  }
  hashtionary
end

def word_substituter(string)
  all_words = string.split(" ")
  dictionary.each do |key, value|
    all_words[all_words.find_index(key.to_s)] = value while all_words.find_index(key.to_s) != nil
    all_words[all_words.find_index(key.to_s.capitalize)] = value while all_words.find_index(key.to_s.capitalize) != nil
  end
  all_words.join(' ')
end

def bulk_tweet_shortener(array)
  array.each { |str| puts "#{word_substituter(str)}"}
end

def selective_tweet_shortener(str)
  if str.length > 140
    word_substituter(str)
  else
    str
  end
end

def shortened_tweet_truncator(str)
  if word_substituter(str).length > 140
    word_substituter(str).slice(0, 140)
  else
    word_substituter(str)
  end
end
