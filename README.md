# Boolean Satisfiability Solver
 A web-based boolean satisfiability solver.
 Given a SAT instance, the program will determine whether or not it is satisfiable (i.e. has some variable assignment that evaluates the Boolean formula to true), if it is, it will provide the variable assignment that satisfies the formula.
 
![](/screenshots/1.png)

## Instructions
Each number represents an index of the variables (i.e. x_1, ..., x_n). A variable can be either true or false (1 or 0). Negative number mean the NOT operator is used. Combined these are referred to as literals.
Each line is a clause, which joins the literals by a logical OR. The clauses are joined by a logical AND.
The goal is to find whether or not some arrangement of the variables will evaluate the expression to true (satisfiable or SAT) or false (unsatisfiable or UNSAT).

The box on the left is the editor. The box on the right is the view of the instance in mathematical terms. The box on the bottom is the output, which contains the output from whatever experiment was ran. The benchmark button varies the number of literals and clauses, generating random instances, and measuring the time duration of each sample. Ten samples are taken per arrangement.

## Presets
The following instances are preloaded into the application.
```
Default [SAT] (Variables = 5, Clauses = 6)
Simple Test [SAT] (Variables = 3, Clauses = 2)
Functioning Sudoku [SAT] (Variables = 729, 8850)
Who Owns the Zebra Puzzle [SAT] (Variables = 155, Clauses = 1135)
Pigeon hole problem [UNSAT] (Variables = 42, Clauses = 133)
Parity problem [SAT] (Variables = 64, Clauses = 254)
Factorize 139*227=31553, solution in variables 1-8 and 9-16 (Variables = 83, Clauses = 1468)
Factorize 2711*2153=5836783, solution in variables 1-12 and 13-24 (Variables = 191, Clauses = 4679)
Artifical instances from generator [UNSAT] (Variables = 100, Clauses = 160)
Artifical instances from generator [SAT] (Variables = 50, Clauses = 80)
Nemesis formula [UNSAT] (Variables = 1317, Clauses = 3668)
Instance from generator 20 [UNSAT] (Variables = 60, Clauses = 160)
Instance from generator 21 [UNSAT] (Variables = 63, Clauses = 168)
Instance from generator 22 [UNSAT] (Variables = 66, Clauses = 176)
```

The application is hosted at https://simewu.github.io/SAT-solver
