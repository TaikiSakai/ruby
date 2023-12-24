def combination_2():
    arr_1 = [1, 2, 3, 4]
    arr_2 = [1, 2, 3, 4, 5]

    comb = []
    tmp = []
    cnt = 0
    for i in range(len(arr_1)): 
        for j in range(len(arr_2)):
            print(j)
            if j + cnt >= len(arr_2):   
                break
            elif arr_1[i] == arr_2[j+cnt]:
                continue 
            else:
                tmp.append(arr_1[i])
                tmp.append(arr_2[j+cnt])

            comb.append(tmp)
            tmp =  []
        print (comb)
        cnt += 1
    return comb


arr = combination_2()
print(arr)