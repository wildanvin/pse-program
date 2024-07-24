pragma circom  2.1.4;

template Multiply3(){
    signal input a;
    signal input b;
    signal input c;
    signal s1;

    signal output out;

    s1 <== a * b;
    out <== s1 * c;

}

component main = Multiply3();

/* INPUT = {
    "a": 3,
    "b": 5,
    "c": 10
} */