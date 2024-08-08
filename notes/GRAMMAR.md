# C++ grammar

## hello world example - pgs 1 -2

---

### Output operator

`<<` - output operator. left-associative.

example:

```c
std::cout << "Hello, World!" << std:endl;
```

The output operator is left-associative. Its behavior depends on the types of its operands (left and right).

In the case of "Hello, World!" the type is a string, and the output operator writes its right operand's characters to the output stream.

| operator | index | left operand    | right operand   | operator job                                               |
| -------- | ----- | --------------- | --------------- | ---------------------------------------------------------- |
| <<       | 0     | std::cout       | "Hello, World!" | Writes its right operand's characters to the output stream |
| <<       | 1     | "Hello, World!" | std::endl       |                                                            |

---

### Namespaces

`::` - _scope operator_ declares a namespace. A word which precedes a double colon indicates a namespace:

```c
std::cout // indicates the std library namespace
```

`std::cout` - standard c output stream

`std::endl` - standard end line. Any more output after endl will appear on a new line. `endl` is a _manipulator_ which means it will have an effect on the stream.
