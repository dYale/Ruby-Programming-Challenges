=begin
Description:

Write function scramble(str1,str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise returns false.

For example:
str1 is 'rkqodlw' and str2 is 'world' the output should return true.
str1 is 'cedewaraaossoqqyt' and str2 is 'codewars' should return true.
str1 is 'katas' and str2 is 'steak' should return false.

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered
=end




def scramble(s1,s2)
  hash = {}
  
  0.upto(s1.length) do |x|
    hash[s1[x]] ? hash[s1[x]] += 1: hash[s1[x]] = 1
  end
  
  0.upto(s2.length) do |y|
    if(hash[s2[y]] && hash[s2[y]] > 0)
      hash[s2[y]] -= 1
    else 
      return false;
    end
  end
  true
end

