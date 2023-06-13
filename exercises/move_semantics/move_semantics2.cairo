// move_semantics2.cairo
// Make me compile without changing line 16 or moving line 13!
// Execute `starklings hint move_semantics2` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use debug::PrintTrait;
use clone::Clone;
// Method 1: Clone
fn main() {
    let arr0 = ArrayTrait::new();
    
    // Method 1: Pass a clone 
    let arr0Copy = arr0.clone();
    let mut arr1 = fill_array(arr0Copy);

    // Do not change the following line!
    arr0.print();
}

fn fill_array(arr: Array<felt252>) -> Array<felt252> {
    let mut arr = arr;

    arr.append(22);
    arr.append(44);
    arr.append(66);

    arr
}





// Method 2: Refernces
// fn main() {
//     let mut arr0 = ArrayTrait::new();
//     let arr1 = fill_array(ref arr0);

//     // Do not change the following line!
//     arr0.print();
// }



// fn fill_array(ref arr: Array<felt252>) {
//     arr.append(22);
//     arr.append(44);
//     arr.append(66);
// }


// Method 3: Snapshot
// fn main() {
//     let arr0 = ArrayTrait::new();
    
//     let mut arr1 = fill_array(@arr0);

//     // Do not change the following line!
//     arr0.print();
// }

// fn fill_array(arr: @Array<felt252>) -> Array<felt252> {
//     let mut arrNew = arr.clone();

//     arrNew.append(22);
//     arrNew.append(44);
//     arrNew.append(66);

//     arrNew
// }