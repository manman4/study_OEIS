# k<=31
def a(k, n)
  return 0 if n < 2
  return [1, 44, 549, 7104, 104100, 1475286, 20842802, 295671198, 4190083085, 59374628434, 841470846944, 11925007688342, 168996943899738, 2394974040514288, 33940795571394262, 480998063196253650, 6816550836218124869, 96601974078400509612, 1369012239935377295854, 19401203058253673198258, 274947636268050621400764, 3896469848341602644039976, 55219522831075639350876744, 782553393257523404353337072, 11090096073215866151573834374, 157165289898796544200350430624, 2227296155585971455156172389428, 31564527815820044279227403214372, 447322379530320420841684880901414, 6339309505792160540792742125116082][n-2] if n <= k
  return 8*a(k, n-1) + 62*a(k, n-2) + 384*a(k, n-3) - 160*a(k, n-4) - 1628*a(k, n-5) - 11310*a(k, n-6) + 9700*a(k, n-7) - 16019*a(k, n-8) + 102564*a(k, n-9) - 98380*a(k, n-10) + 263340*a(k, n-11) - 429661*a(k, n-12) + 174728*a(k, n-13) - 361330*a(k, n-14) + 147404*a(k, n-15) + 284641*a(k, n-16) + 24764*a(k, n-17) + 182412*a(k, n-18) - 156248*a(k, n-19) - 138559*a(k, n-20) + 14756*a(k, n-21) + 14496*a(k, n-22) - 3660*a(k, n-23) - 2640*a(k, n-24) + 328*a(k, n-25) + 80*a(k, n-26) - 8*a(k, n-27)
end

# k=31が正しい すなわち6339309505792160540792742125116082まで必要
(29..31).each{|k|
  p [k, (1..40).map{|i| a(k, i)}]
}