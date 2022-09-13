// Hello world! Cplayground is an online sandbox that makes it easy to try out
// code.

#include <stdio.h>

#include <stdlib.h>

#include <iostream>

using namespace std;
namespace Mylib {
template <class T> class my_shared_ptr {
private:
  // ！！ 1. data
  T *data;
  unsigned int *counter;

public:
  my_shared_ptr() : data(nullptr), counter(nullptr) {}
  // 正常构造
  my_shared_ptr(T *ptr) : data(ptr), counter(new unsigned int(0)) {

    if (ptr != nullptr) {
      (*counter)++;
    }
  }
  // 拷贝构造，注意const
  my_shared_ptr(const my_shared_ptr &ptr)
      : data(ptr.data), counter(ptr.counter) {

    if (counter != nullptr) {
      (*counter)++;
    }
  }
  // 移动构造，注意移动语义
  my_shared_ptr(my_shared_ptr &&ptr) : data(ptr.data), counter(ptr.counter) {
    ptr.counter = nullptr;
    ptr.data = nullptr;
  }
  // 拷贝赋值
  my_shared_ptr &operator=(my_shared_ptr &ptr) {

    // 判断自身赋值
    if (&ptr == this) {
      return *this;
    }

    // 之前的引用计数减少
    decreaseCnt();

    // 更新引用值
    counter = ptr.counter;
    data = ptr.data;

    // 更新引用计数
    if (counter != nullptr) {
      (*counter)++;
    }
    return *this;
  }
  // 移动赋值
  my_shared_ptr &operator=(my_shared_ptr &&ptr) {
    // 之前的引用计数减少
    decreaseCnt();
    // 更新引用值
    counter = ptr.counter;
    data = ptr.data;
    // 移除原来的引用
    ptr.counter = nullptr;
    ptr.data = nullptr;

    return *this;
  }
  T *operator->() const { return data; }
  T &operator*() const { return *data; }
  unsigned int get_count() {

    if (counter == nullptr) {
      return 0;
    }

    return *counter;
  }

  T *get() { return data; }
  ~my_shared_ptr() { decreaseCnt(); }

private:
  void decreaseCnt() {

    if (counter != nullptr) {

      (*counter)--;

      if (*counter == 0) {

        if (data != nullptr) {

          delete data;
          data = nullptr;
        }

        delete counter;
        counter = nullptr;
      }
    }
  }
};
} // namespace Mylib
class Box {
public:
  int length, width, height;
  Box() : length(0), width(0), height(0) {}
  ~Box() { cout << "delete" << endl; }
};

int main() {
  Mylib::my_shared_ptr<Box> obj;
  cout << obj.get_count() << endl; // prints 0
  Mylib::my_shared_ptr<Box> box1(new Box());
  cout << box1.get_count() << endl;     // prints 1
  Mylib::my_shared_ptr<Box> box2(box1); // calls copy constructor
  cout << box1.get_count() << endl;     // prints 2
  cout << box2.get_count() << endl;     // also prints 2

  return 0;
}