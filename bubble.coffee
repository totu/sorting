Array.prototype.move = (f,t) ->
  this.splice(t, 0, this.splice(f, 1)[0])

bubble = (arr) ->
  sorted = false
  while !sorted
    sorted = true
    for i in arr
      if arr[i] > arr[i+1]
        arr.move(i, i+1)
        sorted = false
  console.log(arr)

bubble([1,3,2,5])
bubble([1,2,3])
