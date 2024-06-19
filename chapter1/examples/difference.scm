The most important distinction between recursive and iterative process is that recursive process
returns not just the same procedure, but modified value of the same procedure
But in order to modify that value, procedure must be evaluated again (though perhaps with different argument)
This loop continues until base case won't be satisfied, so that procedure returns a primitive value
This value then shall be passed to 'enclosing procedure' so it can modify it
This process continues until initial procedure reached, so it can finally return desired value
Iterative process, however does not rely on body of the procedure to modify returning value
Instead, these changes are made explicitly and simultiniously with procedure invokation
In order to keep track of these changes, they are passed as the arguments of the procedure
Thus, when base case will be met, function can return value immediately, without looping back
The most important distinction between these processes is an amount of memory that they consume
Recursive process implies that the interpreter needs to keep track of chain of deferred operations
Whereas iterative process does not need to keep track of any additioal information other then
list of argumets, that completely describe the state of the process
