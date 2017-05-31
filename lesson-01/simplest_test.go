    package testPlan 

    import ( "testing"
             "github.com/stretchr/testify/assert" 
    )

    func TestSimplest( t *testing.T) {
        assert.Equal( t, 123, 12, "they should be equal")
    }   
