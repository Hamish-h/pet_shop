
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


def pets_by_breed(shop, breed_query)
	breed_match = []
	for pets in shop [:pets]
		if breed_query == pets [:breed]
			breed_match.push(pets)
		end
	end
	return breed_match
end


def test_all_pets_by_breed__not_found(shop, breed_query)
	breed_match = [nil]
	for pets in shop [:pets]
		if breed_query == pets [:breed]
			breed_match.push(pets)
		end
	end
	return breed_match
end


def find_pet_by_name(shop, name)
 for pet in shop [:pets]
	if name == pet [:name]
		return pet
	end
 end
 return nil
end


def find_pet_by_name(shop, name)
 for pet in shop [:pets]
	if name == pet [:name]
		return pet
	end
 end
 return nil
end


def remove_pet_by_name(shop, name)
	for pet in shop [:pets]
		shop [:pets].delete(pet) if pet [:name] == name
	end
end
