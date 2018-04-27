type Color = enum red, green, blue

#proc demo(background=red, foregrounds = @[green], args: seq[string]) =
proc demo(background=red, foregrounds=green, args: seq[string]) =
  ## demo entry point with varied, meaningless parameters.
  echo "background:", background, " foregrounds:", foregrounds
  for i, arg in args: echo "positional[", i, "]: ", repr(arg)

when isMainModule:
  import cligen
# let seqDelimit = ","
  dispatch(demo,
           help = { "background"  : "background color",
                    "foregrounds" : "foreround colors" })