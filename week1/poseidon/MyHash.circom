pragma circom 2.1.6;
include "circomlib/poseidon.circom";

template MyHash() {
    signal input preimage;
    
    signal output hashOutput;

    component hasher = Poseidon(1);
    hasher.inputs[0] <== preimage;
    hashOutput <== hasher.out;
}

component main = MyHash();

/* INPUT = {
    "preimage": "12345"
} */