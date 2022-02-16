def sum_to(num)
    return 1 if num == 1
    return 0 if num == 0
    return nil if num < 0

    num + sum_to(num - 1)
    end