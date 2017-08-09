def my_select(collection)
  i = 0
  new_array = []
  while i < collection.length
    selected = yield collection[i]
    new_array << collection[i] if selected == true
    i += 1
  end
  new_array
end

collection = []

my_select(collection) do |x|
  x
end
