swap = (arr, firstIndex, secondIndex) ->
  temp = arr[firstIndex]
  arr[firstIndex] = arr[secondIndex]
  arr[secondIndex] = temp

selection = (arr) ->
  for j in [0..arr.length-1]
    min = j
    for i in [j+1..arr.length]
      if arr[i] < arr[min]
        min = i
    if min != j
      swap arr, j, min
  return arr


console.log selection [1,5,2,3,4]
console.log selection [1,2,3,4]
