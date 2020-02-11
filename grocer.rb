def find_item_by_name_in_collection(name, collection)
  row_index = 0 
  while row_index < collection.length do 
    if collection[row_index][:item] == name 
      return collection[row_index]
    end
  row_index += 1 
  
  end 
  
  # Implement me first!
  #
  # Consult README for inputs and outputs
end

def consolidate_cart(cart)
  consolidated_cart = [] 
  row_index = 0 
  while row_index < cart.length do 
    item_check = find_item_by_name_in_collection(cart[row_index][:item],consolidated_cart) 
    ## returns item if it finds it and if not it returns nil 
    if item_check 
      item_check[:count] += 1 
    else 
      item_check = {
        :item => cart[row_index][:item],
        :price => cart[row_index][:price],
        :clearance => cart[row_index][:clearance],
        :count => 1 
      }
      consolidated_cart << item_check
      
    end 
    row_index += 1 
    

  end 
  
 
  
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
