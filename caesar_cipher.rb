def caesar_cipher(text, num)
    text.downcase.chars.map(&:ord).map do |n|
 	if n.between?(65, 90) then	((n - 65 + num) % 26) + 65
 	elsif  n.between?(97, 122) then ((n - 97 + num) % 26) + 97
 	else
 		n
 	end
 end.map(&:chr).join
 	
end 
caesar_cipher("what a string", 5)