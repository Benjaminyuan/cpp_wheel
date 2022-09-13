// C++ program to implement Custom Vector
// class
#include <iostream>

using namespace std;

namespace Mylib {
// Template class to create vector of
// different data_type
template <typename T> class my_vector {
private:
  T *arr;

  // Variable to store the current capacity
  // of the vector
  size_t capacity;

  // Variable to store the length of the
  // vector
  size_t length;
  void ensure_cap() {
    if (length == capacity) {
      std::cout << "ensure start --" << std::endl;

      T *old = arr;
      arr = new T[capacity = capacity * 2];
      copy(old, old + length, arr);

      delete[] old;
      std::cout << "ensure finish --" << std::endl;
    }
  }

public:
  my_vector(size_t size = 1) : capacity(size), arr(new T[size]), length(0) {}
  // Function that returns the number of
  // elements in array after pushing the data
  // TODO: const T& 类型满足T相关类型：const T, T, T&输入
  void push_back(const T &t) {
    ensure_cap();
    arr[length++] = t;
    return;
  }

  // function that returns the popped element
  T pop_back() { return arr[length-- - 1]; }
  // Function that return the size of vector
  size_t size() const { return length; }
  T &operator[](size_t index) {
    // if given index is greater than the
    // size of vector print Error
    if (index >= length) {
      cout << "Error: Array index out of bound";
      exit(0);
    }

    // else return value at that index
    return *(arr + index);
  }
  // TODO: 参数要是Args&&
  // 在模版编程里面叫转发引用，可以完美转发参数类型，左值依然是左值，右值依然是又值
  template <typename... Args> void emplace_back(Args &&...args) {
    ensure_cap();
    // TODO placement new在已经申请的内存上调用构造函数初始化对象, new (addr)
    // T(args...)
    // TODO 使用std::forward完美转发，防止引用坍缩，造成额外拷贝
    new (&arr[length++]) T(std::forward<Args>(args)...);
  }
  friend std::ostream &operator<<(std::ostream &os, const my_vector<T> &obj) {
    // TODO 不需要强制实现
    return os;
  }

  ~my_vector() {
    if (arr != nullptr) {
      std::cout << "delete" << std::endl;
      delete[] arr;
      arr = nullptr;
    }
  }
  // Iterator Class
  class iterator {
  private:
    // Dynamic array using pointers
    T *ptr;

  public:
    explicit iterator() : ptr(nullptr) {}
    explicit iterator(T *p) : ptr(p) {}
    bool operator==(const iterator &rhs) const { return ptr == rhs.ptr; }
    bool operator!=(const iterator &rhs) const { return !(*this == rhs); }
    T &operator*() const { return *ptr; }
    iterator &operator++() {
      ++ptr;
      return *this;
    }
    iterator operator++(int) {
      iterator temp(*this);
      ++*this;
      return temp;
    }
  };

  // Begin iterator
  iterator begin() const { return iterator(arr); }

  // End iterator
  iterator end() const { return iterator(arr + length); }
};

template <typename V> void display_vector(V &v) {
  // Declare iterator
  typename V::iterator ptr;
  for (ptr = v.begin(); ptr != v.end(); ptr++) {
    cout << *ptr << ' ';
  }
  cout << '\n';
}

class TestA {
public:
  TestA() {}
  TestA(int a, int b) : a_(a), b_(b) {
    std::cout << "coustruct" << a << "," << b << std::endl;
  }
  TestA &operator=(const TestA &t) {
    std::cout << "copy cons" << std::endl;
    a_ = t.a_;
    b_ = t.b_;
    return *this;
  }

private:
  int a_;
  int b_;
};
// Driver code
}; // namespace Mylib

int main() {
  cout << "For Integer data_type" << endl;
  using namespace Mylib;
  my_vector<int> v;
  v.push_back(5);
  v.push_back(6);
  v.push_back(7);
  v.push_back(8);
  v.push_back(9);
  v.push_back(10);
  v.push_back(11);
  v.push_back(12);

  // Declare iterator for traversal in
  // vector v
  my_vector<int>::iterator it;

  // Function called to display element in
  // vector in v
  cout << "Element in vector v : ";
  display_vector(v);

  // Print the size of vector v
  cout << "size: " << v.size() << endl;

  // Print Element at index 2
  cout << "v[2]: " << v[2] << '\n';

  // Pop an element and print it
  cout << "Popped Element: " << v.pop_back() << '\n';
  display_vector(v);

  cout << endl;

  cout << "For Char data_type" << endl;

  my_vector<char> c;
  c.push_back('a');
  c.push_back('b');
  c.push_back('c');
  c.push_back('d');
  c.push_back('e');
  c.push_back('f');
  c.push_back('g');
  c.push_back('h');

  // Declare iterator for traversal in
  // vector c
  my_vector<char>::iterator it1;

  // Function called to display element in
  // vector in c
  cout << "Element in vector c : ";
  display_vector(c);

  // Print the size of vector c
  cout << "size: " << c.size() << '\n';

  // Print Element at index 2
  cout << "c[2]: " << c[2] << '\n';

  // Pop an element and print it
  cout << "pop: " << c.pop_back() << '\n';

  // Function called to display element in
  // vector in c
  cout << "Element in vector c : ";
  display_vector(c);

  c.emplace_back(1);
  display_vector(c);
  {
    // test emplace back,
    my_vector<TestA> vec;
    // 这里会调用赋值构造函数
    cout << "push_back element in vector vec : " << std::endl;

    vec.push_back(TestA{1, 2});

    cout << "emplace_back Element in vector vec : " << std::endl;
    // 不会调用赋值构造函数
    // TODO, 扩容情况下这里还是会打印 copy cons, 但是这是ensure_cap中的copy
    // api引发的行为
    vec.emplace_back(1, 2);
    vec.emplace_back(1, 2);
  }

  return 0;
}
