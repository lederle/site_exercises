# What will the following code print, and why? Don't run the code until you have tried to answer.

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

# element assignment does replacement, so the object that a points to whne passed into my_value is altered.  The print is "Xy-zy"

#  str[integer] = new_str
# str[integer, integer] = new_str
# str[range] = aString
# str[regexp] = new_str
# str[regexp, integer] = new_str
# str[regexp, name] = new_str
# str[other_str] = new_str

# Element Assignment—Replaces some or all of the content of str. The portion of the string affected is determined using the same criteria as String#[]. If the replacement string is not the same length as the text it is replacing, the string will be adjusted accordingly. If the regular expression or string is used as the index doesn't match a position in the string, IndexError is raised. If the regular expression form is used, the optional second Integer allows you to specify which portion of the match to replace (effectively using the MatchData indexing rules. The forms that take an Integer will raise an IndexError if the value is out of range; the Range form will raise a RangeError, and the Regexp and String will raise an IndexError on negative match.
