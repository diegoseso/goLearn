# Lesson One

So, here we are we already have GO installed, up and running and do not have any idea how to get
a "Hello world" program and of course no clue how to learn it by TDD, but in the GO lang page http://golang.org 
we can see a code snippet that does the very sam thing we want to accomplish, not tested by the way, 
that code is: 

    // this is a comment 
    package main

    import "fmt"

    func main() {
	fmt.Println("Hello, 世界")
    }


what can we infer or deduce from this piece of code ? 

    * Like Java GO has a main Class/ package called main 
    * GO already provides libraries that can be imported like fmt in this case for output
    * you can declare bracket enclosed methods.

With that information, and taking into consideration that we already know that GO as it´s own testing library, I am thinking 
that maybe to make the simplest test we only need to make a new file importing the testing library, with a little of google help 
I make sure that it´s name is [testing](https://golang.org/pkg/testing/)

Now, taking the previous code template we could turn it into a test file ? 

    package main 

    import "testing"

    func testSimplest() {
        // I do not know how to make an assertion
    }   

At this point few things come to my mind before we can figure out how to make the simplest Test: 

    * This code we are creating should be in a file, does it has extension, what it is ? 
    * I assume the method should start by test word just like in phpUnit or unit like testing, is it neccesary ?
    * How do I make an assertion ? 
    * What should be the simplest assertion I can make
