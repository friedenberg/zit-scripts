#! /usr/bin/env awk -f

BEGIN {
  print "---"
}

FNR == 1 {
  print "# " $0
  print "! md"
  print "---\n"
  next
}

FNR == 2 && $0 == "" {
  next
}

{
  print $0
}

