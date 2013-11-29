Array.prototype.move = (f,t) ->
  this.splice(t, 0, this.splice(f, 1)[0])

exports.sort = (arr) ->
  swapped = true
  while swapped
    swapped = false
    for i in [0..arr.length-2]
      if arr[i] > arr[i+1]
        arr.move(i,i+1)
        swapped = true
    if !swapped
      break
    for i in [arr.length-2..0]
      if arr[i] > arr[i+1]
        arr.move(i,i+1)
        swapped = true
  return arr

#console.log(coctail([1,3,5,6]))
#console.log(coctail([1,2,3,4]))
