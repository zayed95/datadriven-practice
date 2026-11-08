def dedup_preserve_order(items: list) -> list:
  ans = []
  for i in items:
    if i not in ans:
      ans.append(i)
      
  return ans
