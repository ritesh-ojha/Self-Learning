# Python Cheat Sheet

## Variables
```python
x = 5          # Integer
y = 3.14       # Float
name = "John"  # String
is_true = True # Boolean
```

## Data Types
```py
int, float, str, bool, list, tuple, set, dict
```
## Lists
```py
fruits = ['apple', 'banana', 'cherry']
fruits.append('orange')   # Add item
fruits.remove('banana')   # Remove item
print(fruits[0])          # Access item
```

## Tuples
```py
my_tuple = ('apple', 'banana', 'cherry')
print(my_tuple[1])        # Access item
```
## Dictionaries
```py
person = {"name": "John", "age": 30}
print(person["name"])     # Access value
person["age"] = 31        # Modify value
```

## Conditionals
```py
if x > 0:
    print("Positive")
elif x == 0:
    print("Zero")
else:
    print("Negative")
```

## Loops

### For Loop
```py
for fruit in fruits:
    print(fruit)
```

### While Loop
```py
count = 0
while count < 5:
    print(count)
    count += 1
```

## Functions
```py
def greet(name):
    return "Hello, " + name

print(greet("Alice"))
```

## Lambda Functions
```py
add = lambda a, b: a + b
print(add(5, 3))
```

## List Comprehension
```py
squares = [x**2 for x in range(10)]
```

## Exception Handling
```py
try:
    print(10 / 0)
except ZeroDivisionError:
    print("Cannot divide by zero")
finally:
    print("Done")
```

## File Handling
```py
# Reading a file
with open("file.txt", "r") as file:
    content = file.read()

# Writing to a file
with open("file.txt", "w") as file:
    file.write("Hello World")
```

## Classes and Objects
```py
class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def bark(self):
        return "Woof!"

dog = Dog("Buddy", 3)
print(dog.bark())
```


