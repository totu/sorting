Array.prototype.move = (f,t) ->
  this.splice(t, 0, this.splice(f, 1)[0])

insertion = (arr) ->
  res = arr
  for i in [1..arr.length-1]
    val = arr[i]
    pos = i
    while pos > 0 && val < arr[pos-1]
      res.move(pos,pos-1)
      pos--
  res[pos] = val
  return res

console.log insertion [1,5,3,9,2]
console.log insertion [1,2,3,4]
