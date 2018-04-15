
def pet_shop_name(shop)
  return shop [:name]
end


def total_cash(shop)
  return shop [:admin][:total_cash]
end


def add_or_remove_cash(shop, sales)
  return shop [:admin][:total_cash] += sales
end


def add_or_remove_cash__remove(shop, sales)
  return shop [:admin][:total_cash] -= sales
end


def pets_sold(shop)
  return shop [:admin][:pets_sold]
end


def increase_pets_sold(pets, add_pet)
  return pets [:admin][:pets_sold] += add_pet
end


def stock_count(shop)
  return shop [:pets].length
end


def all_pets_by_breed__found(shop, breed)
  match = []
    for pets in shop [:pets]
      if breed == pets [:breed] << match
      end
    end
    return match
end


# def all_pets_by_breed__not_found(shop, breed)
#
# end


# def test_find_pet_by_name__returns_pet
#
# end


# def test_find_pet_by_name__returns_nil

# end


# def remove_pet_by_name(shop, name)
# 	for name in shop [:pets]
# 		shop [:pets].delete(pet) if pet [:name] == name
# 	end
# end


def add_pet_to_stock(shop, new_pet)
  shop [:pets] << new_pet
  return shop [:pets].length
end


# def test_customer_cash
#
# end


# def remove_customer_cash
#
# end


def customer_pet_count(customer)
  return customer [:pets].length
end


def add_pet_to_customer(customer, new_pet)
  customer [:pets] << new_pet
  return customer [:pets].length
end
