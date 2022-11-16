tail -n+2 "amazon_reviews_us_Books_v1_02.tsv" | cut -f9 | awk '{if (min == "") { min = max = $1 }; if ($1 > max) { max = $1 }; if ($1 < min) { min = $1 }; total += $1; count += 1} END { print "min " min, " max " max, " avg " total/count }'

