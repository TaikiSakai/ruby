def chapter02_01(array)
  # ここから下に解答コードを記載する
  #sort 降順.sort.reverse
  len = array.size
  len.times do |i|
    p array[i]
    (len - (i+1)).times do |j|
      if array[j+1][1] > array[j][1]
        tmp = array[j]
        array[j] = array[j+1]
        array[j+1] = tmp
      end
    end
  end
  array
end

def chapter02_02(array)
  # ここから下に解答コードを記載する
end


score = [["らんてくん", 98],["カンノ", 23],["ファラオ", 57],["だいそん", 84],["ひさじゅ", 100]]
r = chapter02_01(score)
p r
score = [["Math", 50],["Chemistry", 65],["Physics", 57]]
r2 = chapter02_01(score)
p r2