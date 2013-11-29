exports.swap = (arr, firstIndex, secondIndex) ->
  temp = arr[firstIndex]
  arr[firstIndex] = arr[secondIndex]
  arr[secondIndex] = temp

exports.partition = (arr, left, right) ->
  pivot = arr[Math.floor((right + left) / 2)]
  i = left
  j = right

  while i <= j
    while arr[i] < pivot
      i++
    while arr[j] > pivot
      j--
    if i <= j
      this.swap arr, i, j
      i++
      j--
  return i

exports.sort = (arr, left, right) ->
  if (arr.length > 1)

    if typeof left != "number"
      left = 0
    if typeof right != "number"
      right = arr.length-1

    index = this.partition arr, left, right

    if left < index-1
      this.sort arr, left, index-1

    if index < right
      this.sort arr, index, right

  return arr


#console.log quick [1,5,2,4,3]
#console.log quick [1,2,3,4]
