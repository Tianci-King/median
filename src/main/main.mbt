///| median 函数
pub fn median(arr : Array[Int]) -> Int {
  let sorted_arr = arr.iter().to_array() // 将数组转换为迭代器并重新收集为数组
  sorted_arr.sort() // 对数组进行排序
  let len = sorted_arr.length() // 获取数组长度
  if len % 2 == 0 {
    // 如果数组长度为偶数，返回中间两个数的平均值
    (sorted_arr[len / 2 - 1] + sorted_arr[len / 2]) / 2
  } else {
    // 如果数组长度为奇数，返回中间的数
    sorted_arr[len / 2]
  }
}

///| main 函数
fn main {
  println(median([1, 2, 3, 4, 5])) // 3
}
