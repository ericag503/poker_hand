def poker_hand(hand)
  card_values = {"2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "t" => 10, "j" => 11, "q" => 12, "k" => 13, "a" => 14}
  value = []
  suit = []
  keys = []
  values = []

  hand.each do |i|
    if i.length == 2
      value << 10
      suit << i[-1]
    else
    value << i[0].to_i
    suit << i[1]
    end
  end

  value.each do |j|
    keys << card_value.key(j)
    end
  keys.each do |k|
    values << keys.value(k)
  end

  consecutive = values.sort.each_cons(2).all? { |x,y| y == x + 1 }
  same_suit = suit.all? {|x| x == suit[0]}

  if consecutive == true && same_suit == true
    puts "straight flush"

  end

end

poker_hand(["9s", "10s", "js", "qs", "ks"])




