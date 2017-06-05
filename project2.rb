def withdraw(amount)
notes500 = []
notes100 = []
notes50 = []
notes20 = []
notes10 = []
10.times {notes500 << 500}
20.times {notes100 << 100}
3.times {notes50 << 50}
100.times {notes20 << 20}
1.times {notes10 << 10}

total_notes = notes500 + notes100 + notes50 +notes20 + notes10
total = 0
total_notes.each do |x|
  total += x
end

  
  if amount <= 0 # this deals with some of the situations...
    puts "Please, enter a positive number"
    return false
  end

  if amount % 10 != 0  # if 
    puts "Please, enter a multiple of ten"
    return false
  end
  
  if amount > total
    puts "Please, enter the number, less then #{total}"
    return false
  end

  withdrawnotes = []

  if notes500 != []
    while amount >= 500 && notes500 != [] do
      withdrawnotes << 500
      amount -= 500
      notes500.shift
    end
  end
  if notes100 != []
    while amount >= 100 && notes100 != [] do
      withdrawnotes << 100
      amount -= 100
      notes100.shift
    end
  end
  if notes50 != []
    while amount >= 50 && notes50 != [] do
      withdrawnotes << 50
      amount -= 50
      notes50.shift
    end
  end
  if notes20 != []
    while amount >= 20 && notes20 != [] do
      withdrawnotes << 20
      amount -= 20
      notes20.shift
    end
  end
  if notes10 != []
    while amount >= 10 && notes10 != [] do
      withdrawnotes << 10
      amount -= 10
      notes10.shift
    end
  end
  
  if withdrawnotes.length >= 40
    puts "Please, enter a smaller number"
    return false
  end
  

  puts withdrawnotes

end

puts "===== ATM ====="

puts "Please, enter the amount, you want to withdraw"
am = gets.chomp.to_i
puts "==============="

withdraw(am)