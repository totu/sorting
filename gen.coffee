mongo = require 'mongojs'
db = mongo 'math', ['r10','r100','r1000','r10000']


x = 10
for i in [1..100]
  arr = []
  for n in [1..x]
    arr.push(Math.floor(Math.random()*9)+1)
  db.r10.insert({"arr" : arr, "len" : arr.length})

x = 100
for i in [1..100]
  arr = []
  for n in [1..x]
    arr.push(Math.floor(Math.random()*9)+1)
  db.r100.insert({"arr" : arr, "len" : arr.length})

x = 1000
for i in [1..100]
  arr = []
  for n in [1..x]
    arr.push(Math.floor(Math.random()*9)+1)
  db.r1000.insert({"arr" : arr, "len" : arr.length})

x = 10000
for i in [1..100]
  arr = []
  for n in [1..x]
    arr.push(Math.floor(Math.random()*9)+1)
  db.r10000.insert({"arr" : arr, "len" : arr.length})


console.log "READY! CTRL-C"
