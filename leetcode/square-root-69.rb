# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    return 0 if x == 0
    return 1 if x == 1 || x == 2 || x == 3
    
    square_root(x, 2, x)
end

def square_root(x, low, high)    
    return high if low > high
    
    mid = low + (high-low)/2    
    
    division = x / mid
                            
    if mid > division
       square_root(x, low, mid-1)
    elsif mid < division
       square_root(x, mid+1, high)
    elsif mid == division
        return mid
    end
end
