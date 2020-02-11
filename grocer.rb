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
    if item_check != nil 
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
  consolidated_cart
  
 
end

def apply_coupons(cart, coupons)
  counter = 0 
  while counter < coupons.length do 
    cart_item = find_item_by_name_in_collection(coupon[counter][:item], cart)
    # passing in the name from the coupon and the cart, This will give us either   
    # item name or nil
    # get item with coupon with new name 
    couponed_item_name = "#{coupons[counter][:item]} /COUPON"
     # set up to check if the coupon item already exist in the cart 
    cart_item_with_coupon = find_item_by_name_in_collection(couponed_item_name, cart) 
    # this will either be an item name with coupon or nil. 
    # check if cart item exist in the count and if the cart item count is larger 
    #  than or equal to the nubmer of that item on our coupon 
    # if those things are two we need another if statement 
    # if cart item with coupon exist alrdy, we want to increase count of that 
    # if not, we want to add that cart item with coupon to the cart 
    if cart_item && cart_item[:count] >= coupons[counter][:num]
      if cart_item_with_coupon != nil 
        cart_item_with_coupon[:count] += coupons[counter][:num]
        cart_item[:count] -= coupons[counter][:num]
      else
        cart_item_with_coupon = {
          :item => couponed_item_name,
          :price => coupons[counter][:cost] / coupons[counter][:num],
          :count => coupons[counter][:num],
          :clearance => cart_item[:clearance]
        }
        cart << cart_item_with_coupon
        cart_item[:count] -= coupons[counter][:num]
      end 
    end 
      
      
    
    
    counter += 1 
    
  end
  
  
  
  
  
  
  
  # passing in an array of hash items from our consolidated cart, with item,price
  # ,clearence,count 
  # array of coupons is second arg with hashes inside, each hash has item,num,cost 
  # example array coupon [{item=>avocado,num=>2,cost=>5}] so 2 avos for $5 so each
  # cost 2.50 
  # new cart should ahve a single avo item with price of $3 and count = 1 
  # and a new item avocado with coupon with price = $2.50 and count = 2 
 cart 
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
