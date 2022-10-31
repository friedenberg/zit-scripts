#! /usr/bin/env awk -f

BEGIN {
  print "---"
}

FNR == 1 {
  bez = $0
  sub(/^\s*#\s*/, "", bez)
  print "# " bez
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

