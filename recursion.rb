
def recursive_linear_search(find_me, index, list)
  if index >= list.length
    return -1
  elsif find_me == list[index]
    return index
  else
    return recursive_linear_search(find_me, index + 1, list)
  end
end

def linear_search(find_me, list)
  return recursive_linear_search(find_me, 0, list)
end

def recursive_binary_search(find_me, start, last, list)
  return -1 if start > last
  mid = (start + last) / 2
  if find_me == list[mid]
    return mid
  elsif find_me < list[mid]
    return recursive_binary_search(find_me, start, mid - 1, list)
  elsif find_me > list[mid]
    return recursive_binary_search(find_me, mid + 1, last, list)
  end
end

def binary_search(find_me, list)
  return recursive_binary_search(find_me, 0, list.length-1, list)
end
