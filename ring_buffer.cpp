#include <iostream>

namespace Mylib {
template <typename T> class ring_buff {
private:
  T *const data;
  size_t head;
  size_t tail;
  const size_t cap;
  bool full;
  const static size_t default_cap = 10;

public:
  // 这里cap非法时做默认值处理
  ring_buff(size_t l = default_cap)
      : data(l > 0 ? new T[l] : new T[default_cap]), cap{l}, head{0}, tail{0},
        full{false} {}
  void push_back(const T &val) {
    data[head] = val;
    // 写满了，把最早加入ring_buffer数据丢弃
    if (full) {
      tail = (tail + 1) % cap;
    }
    // 更新索引
    head = (head + 1) % cap;
    full = head == tail;
  }
  T pop_back() {
    if (empty()) {
      /* code */
      return T{};
    }
    T res = data[tail];
    full = false;
    tail = (tail + 1) % cap;
    return res;
  }
  bool empty() { return !full && (head == tail); }
  size_t size() {
    size_t res = cap;
    if (!full) {
      if (head >= tail) {
        res = head - tail;
      } else {
        res = head - tail + cap;
      }
    }
    return res;
  }
  ~ring_buff() {
    // data 是const T* 目前实现是 初始化了就一定分配了内存，所以不做空指针检查
    delete[] data;
  }
};

} // namespace Mylib

int main() {
  Mylib::ring_buff<int> buf;
  std::cout << buf.size() << std::endl;
  for (int i = 0; i < 20; i++) {
    buf.push_back(i);
    std::cout << buf.size() << std::endl;
    if (i % 2) {
      buf.pop_back();
    }
  }
}