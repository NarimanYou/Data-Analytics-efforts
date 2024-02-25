# Question 1:

def hello_name(user_name):
    print(f"hello_{user_name}!")




# question 2:

def first_odds():
    for num in range(1, 101, 2):
        print(num)



# Question 3:

def max_num_in_list(a_list):
    max_num = a_list[0]
    for num in a_list:
        if num > max_num:
            max_num = num
    return max_num




# Question 4:

def is_leap_year(a_year):
    if a_year % 4 == 0 and (a_year % 100 != 0):
        return True
    else:
        return False




# Question 5:

def is_consecutive(a_list):
     n = len(a_list)
        for i in range(1, n):
            if a_list[i] != a_list[i-1]+1:
                return False
        return True
