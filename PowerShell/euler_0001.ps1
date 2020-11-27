# First attempt
1..999 | ? { ($_ % 3 -eq 0) -or ($_ % 5 -eq 0) } | measure -Sum

# Something more scalable, works from a list of factors to check
1..999 | ? { $x = $_; 3,5 | ? { $x % $_ -eq 0 } } | measure -Sum