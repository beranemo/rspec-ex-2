class Cart
  PRICE = 100
  
  def add(items)
    # 把資料由 hash 轉成 array
    @ordered_items = items.map{ |key, value| value }
  end
  
  def calculate
    total = 0
    for item in @ordered_items do
      total += item * PRICE
    end
    total
  end
end