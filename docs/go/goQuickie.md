# What is Go? - The Rundown
- General-purpose, open source programming language
- Developed at Google
- Lead Devs: Robert Griesemer, Rob Pike, and Ken Thompson
- Github: 2.4K contributors, 81K stars, 12K forks (Jan, 2021)
- Built with performance and simplicity in mind
- Released in 2009; now on version 1.15 (Jan, 2021)
- Compiled to stand-alone binary
- Statically typed
- C-like syntax
- Garbage collection and memory safety
- Interface system, concurrency constructs, package system…
- Modern functional programming paradigms (i.e. closures)`

# How Can Go Help Me?

- High performance of C
- Harder to make mistakes
- Memory safety and garbage collection
- Type checking
- Opinionated, idiomatic ways to accomplish common tasks
- Modern features allow for more succinct, maintainable code
- Concurrency patterns are robust, efficient AND readable, scalable
- Developers spend more time on application logic
- Standardized, simple ways to lint code (go fmt), generate documentation (go doc), execute unit tests (go test) m and handle packages and modules (go get / go mod)
- Compiling and cross-compiling is easy and fast
- Growing community of developers

# Why Go?
- Prioritizes simplicity, scalability and maintainability
- Prioritizes readability over writability
- Statically typed
- Nice compromise between high-performance and programmer burden
- Encourages best practices (i.e. less thinking required)
- Near-native performance
- Great portability
- Great tooling
- Great community

# Example Syntax, Flow Control

```GO
package main

import "fmt"

func main() {
    sum := 0 // Equivalent to `var sum int = 0`
    // initialization; condition; post-increment (all are optional)
    for i := 1; i < 10; i++ {
        sum += i
    }
    fmt.Println("Whoa! We got to", sum)

    // Introducing the for loop with range clause
    var twoPowers = []int{1, 2, 4, 8, 16, 32, 64, 128}
    for i, val := range twoPowers {
        if val > 50 {
            break
        }
        fmt.Printf("2**%d = %d\n", i, val)
    }
}
```

# Primitive Types
- bool
- string
- uint, uint8, uint16, uint32, uint64, uintptr
- int,   int8,   int16,   int32,   int64
- float32, float64
- complex64, complex128
- For additional clarity, we have built-in aliases:
  - byte (alias for uint8)
  - rune (represents a Unicode code point; alias for int32)

# Composite Types

- Pointers```		*int`
- Struct		struct {Name string, Age uint}`
- Function		func (p []byte) (n int, err error)`
- Array		[10]string`
- Slice		[]string`
- Map			map[string]int`
- Channel		chan int`
- Interface		interface{Read(p []byte) (n int, err error)}`
- Note: a variable of type interface{} can be assigned any underlying type`

# Slice and Dice

```GO
func main() {
	var s []int
	printSlice(s)

	// append works on nil slices.
	s = append(s, 0)
	printSlice(s)
	
	// The slice grows as needed.
	s = append(s, 1)
	printSlice(s)
	
	// We can add more than one element at a time.
	s = append(s, 2, 3, 4)
	printSlice(s)
}

func printSlice(s []int) {
	fmt.Printf("len=%d cap=%d %v\n", len(s), cap(s), s)
}```
```

```SHELL
go run 04-slices.go 
len=0 cap=0 []
len=1 cap=1 [0]
len=2 cap=2 [0 1]
len=5 cap=6 [0 1 2 3 4]
```

# Built-in Functions
```GO
func cap(v Type) int
func len(v Type) int
func append(slice []Type, elems ...Type) []Type
func copy(dst, src []Type) int
func delete(m map[Type]Type1, key Type)
func close(c chan<- Type)
func make(t Type, size ...IntegerType) Type
func new(Type) *Type
func panic(v interface{})
func recover() interface{}
func complex(r, i FloatType) ComplexType
func real(c ComplexType) FloatType
func imag(c ComplexType) FloatType
```

# Zero Values

```GO

package main

import "fmt"

func main() {
	var i int
	var f float64
	var b bool
	var s string
	var sl []int
	var ptr *int
	var iface interface{}
	var arr [10]int
	fmt.Printf("%v %v %v %q %v %v %v\n", i, f, b, s, sl, ptr, iface)
	fmt.Printf("%v\n", arr)
}

```

```SHELL
$ go run 03-zero.go 
0 0 false "" [] <nil> <nil>
[0 0 0 0 0 0 0 0 0 0]
```


# Goroutines and Channels

```GO 
// Write numbers 1 through `num` to `output` channel; then close `output`
func producer(num int, output chan int) {
	for i := 1; i <= num; i++ {
		output <- i
	}
	close(output)
}

// Read numbers from `input` channel and write to `done` channel when done
func printer(input chan int, done chan bool) {
	for val := range input {
		fmt.Println(val)
		time.Sleep(500 * time.Millisecond)
	}
	done <- true
}

func main() {
	// Make 2 new channels
	values := make(chan int)
	done := make(chan bool)
	// Start printer
	go printer(values, done)
	// Wait 3 seconds and then start producer
	time.Sleep(3 * time.Second)
	go producer(10, values)
	// Block until we read from `done`
	<-done
}

```

