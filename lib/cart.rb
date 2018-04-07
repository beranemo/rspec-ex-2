class Cart
  PRICE = 100
  
  def add(items)
    # 把資料由 hash 轉成 array
    @ordered_items = items.map{ |key, value| value }
  end
  
  def calculate
    total = 0
    @ordered_items = @ordered_items.delete_if{ |x| x == 0 } # 刪除值是 0 的
    
    if @ordered_items.size == 2
      while @ordered_items.size > 0   # 當還有書籍時
        total = total + 2 * PRICE * 0.95
        @ordered_items[0] -= 1       # 刪除已計算過的書籍       
        @ordered_items[1] -= 1       # 刪除已計算過的書籍
        @ordered_items = @ordered_items.delete_if{ |x| x == 0 }
      end
    else
      for item in @ordered_items do
        total += item * PRICE
      end
    end
    
    total
  end
end