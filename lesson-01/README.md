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

I have got an idea for my first concern, I am looking for the trending projects in github made in GO, I recommend you do that 
so you realize yourself the extension, so Now I am creating a file called simplestTest.go with the code above.

For the second concern I rather look it up on the testing library documentation, be my companion on the search for this answer before you continue to read, documentation is in [testing](https://golang.org/pkg/testing/)

That was fast, in the third line we had the answer we needed and It´s my turn to make small refactor: 

    package main 

    import "testing"

    func TestSimplest() {
        // I do not know how to make an assertion
    }   

Reading the documentation a little bit further I see no assertion method , that´s weird as hell for me since phpunit and other testing libraries are based on assertions, so I decided to give it a couple of more minutes of searching in google by the keywords "go testing assertions" 

I find this [github sacred testing go library](https://github.com/stretchr/testify) in most of the hits and I realized in the README two interesting things: 

    * It provides the assertion that I was looking for
    * You can add libraries directly from the internet

So, to install this external library in go it seems that you need to run the following command, remember to do that in your vagrant machine: 

    go get github.com/stretchr/testify

## Oops! errors everywhere

we get this error message

    package github.com/stretchr/testify: cannot download, $GOPATH not set. For more details see: go help gopath

What is the $GOPATH variable ? why is that not already set ? well it seems that this is the directory of your go Workspace, let´s set it to: 

    export GOPATH=/code

Now, let´s refactor our code again: 

    package main 

        import ( "testing"
                 "github.com/stretchr/testify/assert" 
        )

        func testSimplest() {
            assert.Equal(123, 123, "they should be equal")
        } 

It now seems like we have the simplest test ready, I have saved it for you in simplestTest.go, now how do we run it ? 
I will try by just running go command in the cli to see what it does: 




