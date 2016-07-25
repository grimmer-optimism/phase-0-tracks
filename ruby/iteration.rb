grocery_list = ["chicken", "milk", "ice cream"]

menu_items = {
	main_course: "chicken tenders",
	dessert: "chocolate",
	beverage: "2 percent milk"
}

grocery_list.each do |item|
	p "Don't forget #{item}"
end


grocery_list.map do |item|
	p item.length
end


menu_items.each do |course, value|
	p "I would like #{value} #{course}"
end

#Return value of nubmer of letters in each menu item
menu_items.map do |course, value|
	puts value.length
end

#1
menu_items.delete_if { |course, value| value.length < 10 }

grocery_list.delete_if { |item| item.length < 5}

#2
menu_items.select {|course, value| value.length < 10 }

grocery_list.each do |item|
	if item.length < 5
	p "#{item}"
	end
end

#3
#only print if they have an e
grocery_list.each do |item|
	if item.include?("e")
		p "#{item}"
	end
end

menu_items.select {|course, value| value.include?("i")
