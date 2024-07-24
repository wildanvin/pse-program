# Notes to compile a simple multiply.circom circuit

## Compile:

circom multiply.circom

## Convert to R1CS:

circom multiply.circom --r1cs --sym

It creates 'multiply.r1cs' and 'multiply.sym' which saves the variable names

## Read the R1CS with snarkjs

snarkjs r1cs print multiply.r1cs

## Compute the witness

circom multiply.circom --r1cs --wasm --sym

cd into the created folder 'multiply_js'. Now we need to create a json file naming our inputs:

{
"a":"2",
"b":"3"
}

## Calculate and export the witness

node generate_witness.js multiply.wasm input.json witness.wtns

### Now we create a json from the witness

snarkjs wtns export json witness.wtns
we get an array of the form [1, out, a, b, c, s1].

[
"1",
"6", out
"2", a
"3" b
]
