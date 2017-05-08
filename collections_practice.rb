def begins_with_r(array)
  i = true
  array.each do |word|
    i = false if word[0] != "r"
  end
  i
end

def contain_a(array)
  new_array = []
  array.each do |word|
    new_array << word if word.include?("a")
  end
  new_array
end

def first_wa(array)
array.find {|word| word[0] == "w" && word[1] == "a"}
end

def remove_non_strings(array)
  new_array = []
    array.each do |word|
      new_array << word if word.is_a?(String)
    end
  new_array
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  new_array = []
  keys.each do |person_name|
    name = person_name[:first_name]
      data.each do |person_details|
        if person_details[name]
          merged_person = person_details[name]
          merged_person[:first_name] = name
          new_array << merged_person
        end
      end
  end
  new_array
end

def find_cool(array)
  new_array = []
  array.each do |element|
    if element[:temperature] == "cool"
      new_array << element
    end
  end
  new_array
end

def organize_schools(schools)
  schools_by_location = {}
  schools.each do |school_name, school_location|
    location = school_location[:location]
    if schools_by_location[location]
      schools_by_location[location] << school_name
    else
      schools_by_location[location] ||= []
      schools_by_location[location] << school_name
    end
  end
  schools_by_location
end
