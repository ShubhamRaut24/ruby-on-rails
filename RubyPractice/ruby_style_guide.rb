# Use snake_case for symbols, methods and variables.

# bad
:'some symbol'
:SomeSymbol
:someSymbol

someVar = 5

def someMethod
  # some code
end

def SomeMethod
  # some code
end

# good
:some_symbol

some_var = 5

def some_method
  # some code
end

# Do not separate numbers from letters on symbols, methods and variables.

# bad
:some_sym_1

some_var_1 = 1

var_10 = 10

def some_method_1
  # some code
end

# good
:some_sym1

some_var1 = 1

var10 = 10

def some_method1
  # some code
end