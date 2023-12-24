
def chapter01_01(number_array)
  # ここから下に解答コードを記載する
  size = number_array.size

   size.times do |i|
    puts("i:#{i}")
    #上のループが5回目で停止する
    (size - (i+1)).times do |j|
      puts("j:#{j}")
      if number_array[j+1] < number_array[j]
        tmp = number_array[j]
        number_array[j] = number_array[j+1]
        number_array[j+1] = tmp
      end
    end
  end
  number_array
end


def chapter01_02(number)
  # ここから下に解答コードを記載する
  arr_1 = Range.new(1, number-1).to_a
  arr_2 = Range.new(1, number).to_a
  

  comb = []
  tmp = []
  cnt = 0

  arr_1.each.with_index do |num_1, index_1|
    arr_2.each.with_index do |num_2, index_2|

      if index_2 + cnt >= arr_2.size
        break
      elsif arr_1[index_1] == arr_2[index_2+cnt]
        next
      else
        tmp.push(arr_1[index_1])
        tmp.push(arr_2[index_2+cnt])
      end
      comb.push(tmp)
      tmp = []
    end
    cnt += 1
  end
  
  comb      
end


def chapter01_03(money)
  # ここから下に解答コードを記載する
  money_types = [1, 5, 10, 50, 100, 500, 1000, 5000, 10000]
  result = []
  total = 0

  money_types.reverse.each do |type|
    #amount: 枚数 
    amount = (money - total) / type
    #枚数分の合計金額
    total += type * amount
    result.push([type, amount])
  end
  result.to_h
end

r = chapter01_03(6498)
p r

array= [1, 9, 3, 5, 2]
sorted = chapter01_01(array)
p sorted