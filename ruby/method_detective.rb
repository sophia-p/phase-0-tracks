# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1,"o")
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
"the usual" << " suspects"
#=> "the usual suspects"

" suspects".prepend("the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
string = "The case of the disappearing last letter"
string = string[0...string.length-1]
# => "The case of the disappearing last lette"

"The mystery of the missing first letter"[1..-1]
string2 = "The mystery of the missing first letter"
string2 = string2[1..string.length-1]
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".tr_s("  ", " ")
"Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

"z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ASCII code for lowercase "z" (lowercase "a" starts at 97).
"How many times does the letter 'a' appear in this string?".count("a")
# => 4