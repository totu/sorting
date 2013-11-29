Array.prototype.move = (f,t) ->
  this.splice(t, 0, this.splice(f, 1)[0])

mongo = require 'mongojs'
db = mongo 'math', ['r10','r100','r1000','r10000','sorts']

bubble = require './bubble.coffee'
quick = require './quick.coffee'
selection = require './selection.coffee'
coctail = require './coctail.coffee'
insertion = require './insertion.coffee'

# 10
db.r10.find (err, docs) ->
  start = +new Date()
  for d in docs
    bubble.sort(d.arr)
  end = +new Date()
  console.log "Bubblesort    : sorting 10 digits array took " + (end-start)/100 + " milliseconds"

  db.r10.find (err, docs) ->
    start = +new Date()
    for d in docs
      quick.sort(d.arr)
    end = +new Date()
    console.log "Quicksort     : sorting 10 digits array took " + (end-start)/100 + " milliseconds"

    db.r10.find (err, docs) ->
      start = +new Date()
      for d in docs
        insertion.sort(d.arr)
      end = +new Date()
      console.log "Insertionsort : sorting 10 digits array took " + (end-start)/100 + " milliseconds"

      db.r10.find (err, docs) ->
        start = +new Date()
        for d in docs
          coctail.sort(d.arr)
        end = +new Date()
        console.log "Coctailsort   : sorting 10 digits array took " + (end-start)/100 + " milliseconds"

        db.r10.find (err, docs) ->
          start = +new Date()
          for d in docs
            selection.sort(d.arr)
          end = +new Date()
          console.log "Selectionsort : sorting 10 digits array took " + (end-start)/100 + " milliseconds"

        # 100
          db.r100.find (err, docs) ->
            start = +new Date()
            for d in docs
              bubble.sort(d.arr)
            end = +new Date()
            console.log "Bubblesort    : sorting 100 digits array took " + (end-start)/100 + " milliseconds"

            db.r100.find (err, docs) ->
              start = +new Date()
              for d in docs
                quick.sort(d.arr)
              end = +new Date()
              console.log "Quicksort     : sorting 100 digits array took " + (end-start)/100 + " milliseconds"

              db.r100.find (err, docs) ->
                start = +new Date()
                for d in docs
                  insertion.sort(d.arr)
                end = +new Date()
                console.log "Insertionsort : sorting 100 digits array took " + (end-start)/100 + " milliseconds"

                db.r100.find (err, docs) ->
                  start = +new Date()
                  for d in docs
                    coctail.sort(d.arr)
                  end = +new Date()
                  console.log "Coctailsort   : sorting 100 digits array took " + (end-start)/100 + " milliseconds"

                  db.r100.find (err, docs) ->
                    start = +new Date()
                    for d in docs
                      selection.sort(d.arr)
                    end = +new Date()
                    console.log "Selectionsort : sorting 100 digits array took " + (end-start)/100 + " milliseconds"

                    # 1000
                    db.r1000.find (err, docs) ->
                      start = +new Date()
                      for d in docs
                        bubble.sort(d.arr)
                      end = +new Date()
                      console.log "Bubblesort    : sorting 1000 digits array took " + (end-start)/100 + " milliseconds"

                      db.r1000.find (err, docs) ->
                        start = +new Date()
                        for d in docs
                          quick.sort(d.arr)
                        end = +new Date()
                        console.log "Quicksort     : sorting 1000 digits array took " + (end-start)/100 + " milliseconds"

                        db.r1000.find (err, docs) ->
                          start = +new Date()
                          for d in docs
                            insertion.sort(d.arr)
                          end = +new Date()
                          console.log "Insertionsort : sorting 1000 digits array took " + (end-start)/100 + " milliseconds"

                          db.r1000.find (err, docs) ->
                            start = +new Date()
                            for d in docs
                              coctail.sort(d.arr)
                            end = +new Date()
                            console.log "Coctailsort   : sorting 1000 digits array took " + (end-start)/100 + " milliseconds"

                            db.r1000.find (err, docs) ->
                              start = +new Date()
                              for d in docs
                                selection.sort(d.arr)
                              end = +new Date()
                              console.log "Selectionsort : sorting 1000 digits array took " + (end-start)/100 + " milliseconds"

                              #10000
                              #db.r10000.find (err, docs) ->
                                #start = +new Date()
                                #for d in docs
                                  # bubble.sort(d.arr)
                                #end = +new Date()
                                #console.log "Bubblesort    : sorting 10000 digits array took " + (end-start)/100 + " milliseconds"

                              db.r10000.find (err, docs) ->
                                start = +new Date()
                                for d in docs
                                  quick.sort(d.arr)
                                end = +new Date()
                                console.log "Quicksort     : sorting 10000 digits array took " + (end-start)/100 + " milliseconds"

                                db.r10000.find (err, docs) ->
                                  start = +new Date()
                                  for d in docs
                                    insertion.sort(d.arr)
                                  end = +new Date()
                                  console.log "Insertionsort : sorting 10000 digits array took " + (end-start)/100 + " milliseconds"

                                  db.r10000.find (err, docs) ->
                                    start = +new Date()
                                    for d in docs
                                      coctail.sort(d.arr)
                                    end = +new Date()
                                    console.log "Coctailsort   : sorting 10000 digits array took " + (end-start)/100 + " milliseconds"

                                    db.r10000.find (err, docs) ->
                                      start = +new Date()
                                      for d in docs
                                        selection.sort(d.arr)
                                      end = +new Date()
                                      console.log "Selectionsort : sorting 10000 digits array took " + (end-start)/100 + " milliseconds"
