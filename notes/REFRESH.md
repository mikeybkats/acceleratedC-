# Refresh

## Pointers

```C
int x = 10;
int* ptr = &x; // Correct: ptr now holds the address of x
```

- In the above example the `&` operator grabs the address of `x`.
- printing the value of `ptr` would result in some arbitrary address.
- to get the value of x from `ptr`, `ptr` must be dereferenced:

```C
int deref = *ptr // *ptr dereferences the address to get the value of x.
```
