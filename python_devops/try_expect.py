
thinkers = ['Plato', 'Playdoit', 'Gumby']
while True:
   try:
      thinker = thinkers.pop()
      print(thinker)
   except IndexError as e:
      print("We tried to pop too many thinker")
      print(e)
      break