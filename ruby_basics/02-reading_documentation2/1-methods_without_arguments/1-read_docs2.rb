# How would you use String#upcase to create an uppercase version of the string "xyz"?
#


#  upcase → new_str
# upcase([options]) → new_str

# Returns a copy of str with all lowercase letters replaced with their uppercase counterparts.

# See String#downcase for meaning of options and use with different encodings.
# --->
# The meaning of the options is as follows:

# No option

#     Full Unicode case mapping, suitable for most languages (see :turkic and :lithuanian options below for exceptions). Context-dependent case mapping as described in Table 3-14 of the Unicode standard is currently not supported.
:ascii

#     Only the ASCII region, i.e. the characters “A'' to “Z'' and “a'' to “z'', are affected. This option cannot be combined with any other option.
:turkic

 #    Full Unicode case mapping, adapted for Turkic languages (Turkish, Azerbaijani, …). This means that upper case I is mapped to lower case dotless i, and so on.
:lithuanian

  #   Currently, just full Unicode case mapping. In the future, full Unicode case mapping adapted for Lithuanian (keeping the dot on the lower case i even if there is an accent on top).
:fold

   #  Only available on downcase and downcase!. Unicode case folding, which is more far-reaching than Unicode case mapping. This option currently cannot be combined with any other option (i.e. there is currently no variant for turkic languages).

p "hEllO".upcase   #=> "HELLO"
