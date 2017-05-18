import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var inputs = [Int]()

// Loop until valid input is received
while inputs.count < 4 {
    
    // Show the prompt
    print("Reading \(inputs.count + 1)? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputAsInt = Int(notNilInput) {
            if (inputAsInt > 0) {
                inputs.append(inputAsInt)
            }
        }
    }
    
}

/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'process' code below....


var output : String!

if (inputs[0] == inputs[1] && inputs[2] == inputs[3] && inputs[0] == inputs[2]) {
    output = "Fish at Constant Depth"
} else if (inputs[0] > inputs[1] && inputs[1] > inputs[2] && inputs[2] > inputs[3]) {
    output = "Fish Diving"
} else if (inputs[0] < inputs[1] && inputs[1] < inputs[2] && inputs[2] < inputs[3]) {
    output = "Fish Rising"
} else {
    output = "No Fish"
}




/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.
print(output)
