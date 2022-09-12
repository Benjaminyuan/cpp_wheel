// C++ program to illustrate the
// above functionalities
#include <cstring>

#include <iostream>

// TODO: 1. 使用自定义namespace防止作用域污染，面试的写上应该可以给加分～
namespace Mylib {
// Class Mystring
class Mystring {

  // Prototype for stream insertion
  // TODO：声明友元函数，使得这个函数可以访问Mystring中所有成员变量
  friend std::ostream &operator<<(std::ostream &os, const Mystring &obj) {
    os << obj.str;
    return os;
  }

  // Prototype for stream extraction
  friend std::istream &operator>>(std::istream &is, Mystring &obj) {
    char *buff = new char[1000];
    memset(&buff[0], 0, sizeof(buff));
    is >> buff;
    obj = Mystring{buff};
    delete[] buff;
    return is;
  }

  // Prototype for '+'
  // operator overloading
  friend Mystring operator+(const Mystring &lhs, const Mystring &rhs) {
    int length = strlen(lhs.str) + strlen(rhs.str);
    char *buff = new char[length + 1];

    // Copy the strings to buff[]
    strcpy(buff, lhs.str);
    strcat(buff, rhs.str);
    buff[length] = '\0';

    // String temp
    Mystring temp = buff;

    // delete the buff[]
    delete[] buff;

    // Return the concatenated string
    return temp;
  }
  char *str;

public:
  // No arguments constructor
  Mystring() : str(nullptr) {
    str = new char[1];
    str[0] = '\0';
  }

  // pop_back() function
  void pop_bk() {
    int length = strlen(str);
    char *buff = new char[length];

    // Copy character from str
    // to buff[]
    for (int i = 0; i < length - 1; i++)
      buff[i] = str[i];
    buff[length - 1] = '\0';

    // Assign the new string with
    // char a to string str
    *this = Mystring{buff};

    // delete the buff[]
    delete[] buff;
  }

  // push_back() function
  void push_bk(char a) {
    // Find length of string
    int length = strlen(str);

    char *buff = new char[length + 2];

    // Copy character from str
    // to buff[]
    for (int i = 0; i < length; i++) {
      buff[i] = str[i];
    }
    buff[length] = a;
    buff[length + 1] = '\0';

    // Assign the new string with
    // char a to string str
    *this = Mystring{buff};

    // Delete the temp buff[]
    delete[] buff;
  }

  // To get the length
  size_t size() { return strlen(str); }

  size_t length() { return size(); }

  // Function to copy the string
  // of length len from position pos
  void copy(char s[], int len, int pos) {
    for (int i = 0; i < len; i++) {
      s[i] = str[pos + i];
    }
    s[len] = '\0';
  }

  // Swap strings function
  void swap(Mystring &rhs) {
    Mystring temp{rhs};
    rhs = *this;
    *this = temp;
  }

  // Constructor with 1 arguments
  Mystring(char *val) {
    if (val == nullptr) {
      str = new char[1];
      str[0] = '\0';
    } else {

      str = new char[strlen(val) + 1];

      // Copy character of val[]
      // using strcpy
      strcpy(str, val);
      str[strlen(val)] = '\0';
    }
  }

  // Copy Constructor
  Mystring(const Mystring &source) {
    str = new char[strlen(source.str) + 1];
    strcpy(str, source.str);
  }

  // Move Constructor
  Mystring(Mystring &&source) {
    str = source.str;
    source.str = nullptr;
  }

  // Overloading the assignment
  // operator
  // TODO: 赋值构造函数返回类型是 自身类型的引用
  Mystring &operator=(const Mystring &rhs) {
    // TODO: 赋值构造函数一定要判断！自己不能给自己赋值
    if (this == &rhs)
      return *this;
    // TODO: str是char* 指针，如果是delete str那么只会释放一个char的内存,
    // delete[]
    // 编译器会处理变长数组申请和释放的操作，不需要关注为什么这里delete[]能够知道str指向数组的长度
    delete[] str;
    // 申请新内存拷贝内容
    str = new char[strlen(rhs.str) + 1];
    strcpy(str, rhs.str);
    return *this;
  }
  // Destructor
  ~Mystring() {
    if (str != nullptr) {
      delete str;
      str = nullptr;
    }
  }
};

// Driver Code
void test_mystring() {
  // Constructor with no arguments
  Mystring a;

  // Convert string literal to
  // char array
  char temp[] = "Hello";

  // Constructor with one argument
  Mystring b{temp};

  // Copy constructor
  Mystring c{a};

  char temp1[] = "World";

  // One arg constructor called,
  // then the move constructor
  Mystring d{Mystring{temp}};

  // Remove last character from
  // Mystring b
  b.pop_bk();

  // Print string b
  std::cout << "Mystring b: " << b << std::endl;

  // Append last character from
  // Mystring b
  b.push_bk('o');

  // Print string b
  std::cout << "Mystring b: " << b << std::endl;

  // Print length of string b
  std::cout << "Length of Mystring b: " << b << std::endl;

  char arr[80];

  // Copy string b chars from
  // length 0 to 3
  b.copy(arr, 3, 0);

  // Print string arr
  std::cout << "arr is: " << arr << std::endl;

  // Swap d and b
  d.swap(b);

  // Print d and b
  std::cout << d << " " << b << std::endl;

  // Concatenate b and b with
  // overloading '+' operator
  d = b + b;

  // Print string d
  std::cout << "string d: " << d << std::endl;

  return;
}

} // namespace Mylib

int main() { Mylib::test_mystring(); }