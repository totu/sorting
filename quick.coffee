quick = (arr, size) ->
  if size < 2
    return true
  pivot = arr[Math.random() % size]
  L = 0
  U = size - 1
  while L < U
    while arr[L] < pivot
      L++
    while arr[U] > pivot
      U--
    temp = arr[L]
    arr[L] = arr[U]
    arr[U] = temp
  quick(arr, L)
  quick(arr[L+1], size - L - 1)

console.log(quick([1,2,3,4], 4))
