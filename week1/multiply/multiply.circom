pragma circom 2.1.4;

template Multiply(){
    signal input a;
    signal input b;
    signal output out;

    out <== a * b;
}

component main = Multiply();

/* INPUT = {
    "a": 3,
    "b": 5
} */