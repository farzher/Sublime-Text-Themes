shuffle = (arr) ->
  j = x = i = arr.length
  while i
    j = Math.floor Math.random! * i
    x = arr[--i]
    arr[i] = arr[j]
    arr[j] = x
  arr
isSorted = (arr) ->
  return true if arr.length <= 1
  for i til arr.length - 1
    return false if arr[i] > arr[i+1]
  return true
wait = ->

# Not recommended for large numbers
sleepSort = (arr) ->
  arr.forEach (num) ->
    setTimeout (-> console.log num), num

# Even simpler than bubblesort
shuffleSort = (arr) ->
  while not isSorted arr => shuffle arr
  return arr

# Assumes the many-worlds interpretation is true
quantumShuffleSort = (arr) ->
  shuffle arr
  if not isSorted arr => # TODO: Destroy this universe
  return arr

# Memory glitches due to cosmic rays should eventually sort the array, right?
miracleSort = (arr) ->
  until isSorted arr => wait!
  return arr

# It's probably already sorted
assumptionSort = (arr) -> return arr

# Good enough for the demo, lol
demoSort = (arr) -> return [1 3 4 5 5 5 6 25 27 33 83]









sleepSort [5 3 1 4 6 5 83 25 27 5 33]
console.log shuffleSort [5 3 1 4 6 5 83 25 27 5 33]
# console.log miracleSort [5 3 1 4 6 5 83 25 27 5 33]
# console.log quantumShuffleSort [5 3 1 4 6 5 83 25 27 5 33]
console.log demoSort [5 3 1 4 6 5 83 25 27 5 33]

