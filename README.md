This project implements the library of the template class Polynom ("Polynom from one variable").


Build instructions:
```
# clone repo and download googletests
git clone https://github.com/YaroslavBespalov/Polynom.git
cd Polynom
git submodule update --init --recursive

# make build directory
mkdir build
cd build

# generate projects
cmake ..

# build
make

# run Polynom_unittests
./Polynom_unittests

# run program
./Polynom

```

How to use:
```
Copy Polynom.h in your project,
and include it in main.cpp (#include Polynom.h);
After this you can work with Polynoms, and using
redefined operators.
```

list of redefined operators:
```
1) +;- * for arithmetic operations
2) ==; != for comparing
3) function degree for calculate the degree of a polynom
4) operator [] for receive or change coefficient of polynom 
5) operator (point) for calculate value in point;
6) << output in stream;
7) / and % calculate incomplete quotient
and remainder of the division
8) operator , for receiving greatest common divisor
9) operator =(const Polynom&)
10) operator =(Polynom&&)
11) Polynom(const Polynom&) && Polynom(Polynom&&)

```
