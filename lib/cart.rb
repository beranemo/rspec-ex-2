class Cart
  PRICE = 100
  
  def add(items)
    # 把資料由 hash 轉成 array 後，刪除資料為 0 的
    @ordered_items = items.map{ |key, value| value }.delete_if{ |x| x == 0 }
  end
  
  def calculate
    total = 0
    
    while @ordered_items.size > 0   # 當還有書籍時
      if @ordered_items.size == 2
        total += 2 * PRICE * 0.95
      else
        total += PRICE               # 把客戶賣得單集 1 本計入總價
      end
      @ordered_items = @ordered_items.map{ |x| x -= 1 }
      @ordered_items = @ordered_items.delete_if{ |x| x == 0 }
    end
    
    total
  end
end