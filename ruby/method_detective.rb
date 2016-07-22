# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

 "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

 "zom".sub("o", "oo")
 "zom".gsub("o", "oo")
# => “zoom”

"enhance".center(15)
# => "    enhance    "

 "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

 "the usual".insert(-1, "suspects")
 "the usual".concat(" supsects")
#=> "the usual suspects"

" suspects".insert(0, "the usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".slice(1, 38)
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
"Elementary,    my   dear        Watson!".squeeze(" ")
"Elementary,    my   dear        Watson!".gsub(/\s+/, " ")
# => "Elementary, my dear Watson!"

"z".ord   #the infamous .ord!!!!
# => 122
# (What is the significance of the number 122 in relation to the character z?)
"Ruby is 13%".sub( '%' ) {|c| c.ord.to_s + ' ' } #=> "Ruby is 1337"

"How many times does the letter 'a' appear in this string?".count("a")
# => 4
