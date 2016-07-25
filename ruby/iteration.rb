grocery_list = ["chicken", "milk", "ice cream"]

menu_items = {
	main_course: "chicken tenders",
	dessert: "chocolate",
	beverage: "2 percent milk"
}

grocery_list.each do |item|
	p "Don't forget #{item}"
end
