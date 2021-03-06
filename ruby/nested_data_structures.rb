menu = {
  appetizers: {
    #array neseted in an array
    soup: {
      soup_list: ['Beer Cheese', 'Beef Chilli', 'Creamy Tomato'],
      beer_cheese: 5,
      beef_chilli: 5,
      creamy_tomato: 3
    }
    house_salad: 3,
    egg_rolls: 3
  }

  main_course: {
    entree_list: ['Steak and potatoes', 'Chicken Pot Pie', 'Baked Salmon and Vegetables'],
    steak_potatoes: 25,
    chicken_pot_pie: 16,
    baked_salmon: 21
  }

  dessert: {
    dessert_list: ['Strawberry Cheesecake', 'Chocolate Cake', 'Ice Cream' ],
    strawberry_cheesecake: 5,
    chocolate_cake: 5,
  }

}

#return price of beer cheese soup $5
p menu[:appetizers][:soup][:beer_cheese]
#how many soups are there to choose from? --> 3 choices
p menu[:appetizers][:soup][:soup_list].length.to_i
#return string 'Chocolate Cake'
p menu[:dessert][:dessert_list][1]
