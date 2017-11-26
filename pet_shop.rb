def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
  pet_shop[:pets].length()
end

def pets_by_breed(pet_shop, breed_name)
  pets = []

  for pet in pet_shop[:pets]
    if pet[:breed] == breed_name
      pets << pet
    end
  end
  return pets
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
     pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  # stock_count = [:pets].length
  # return stock_count
end

def customer_pet_count(customers)
  customers[:pets].length
end

def add_pet_to_customer(customers, new_pet)
  customers[:pets].push(new_pet)
  customers[:pets].length
end

def customer_can_afford_pet(customer,new_pet)
  if customer[:cash] > new_pet[:price]
      return true
  else
      return false
  end
end
