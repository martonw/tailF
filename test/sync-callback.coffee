Tail = require '../tail-forever.coffee'

options =
  "start":0
  "syncCallback": (err, action) ->
    console.log action

f = './LICENSE'
t = new Tail(f, options)

t.on 'line', (line) ->
  console.log  line
