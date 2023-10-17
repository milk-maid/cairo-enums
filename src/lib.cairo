use debug::PrintTrait;

fn plus_one(x: Option<u8>) -> Option<u8> {
    match x {
        Option::Some(val) => Option::Some(val + 1),
        Option::None(_) => Option::None,
    }
}

fn main() {
    let five: Option<u8> = Option::Some(5);
    let six: Option<u8> = plus_one(five);
    six.unwrap().print();
    let none = plus_one(Option::None);
    none.unwrap().print();
}

// fn main() {

    // let msg: Message = Message::Quit;
    // msg.process();
    // let ech: Message = Message::Echo(16);
    // ech.process();
    // let mve: Message = Message::Move((11, 9));
    // mve.process();
// }


// #[derive(Drop)]
// enum Message {
//     Quit,
//     Echo: felt252,
//     Move: (u128, u128),
// }

// trait Processing {
//     fn process(self: Message);
// }

// impl ProcessingImpl of Processing {
//     fn process(self: Message) {
//         match self {
//             Message::Quit => { 'quitting'.print(); },
//             Message::Echo(value) => { value.print(); },
//             Message::Move((x, y)) => { 'moving'.print(); },
//         }
//     }
// }

// fn find_value_recursive(arr: @Array<felt252>, value: felt252, index: usize) -> Option<usize> {
//     if index >= arr.len() {
//         return Option::None;
//     }

//     if *arr.at(index) == value {
//         return Option::Some(index);
//     }

//     find_value_recursive(arr, value, index + 1)
// }

// fn find_value_iterative(arr: @Array<felt252>, value: felt252) -> Option<usize> {
//     let length = arr.len();
//     let mut index = 0;
//     let mut found: Option<usize> = Option::None;
//     loop {
//         if index < length {
//             if *arr.at(index) == value {
//                 found = Option::Some(index);
//                 break;
//             }
//         } else {
//             break;
//         }
//         index += 1;
//     };
//     return found;
// }

// #[cfg(test)]
// mod tests {
//     use debug::PrintTrait;
//     use super::{find_value_recursive, find_value_iterative};

//     #[test]
//     #[available_gas(999999)]
//     fn test_increase_amount() {
//         let mut my_array = ArrayTrait::new();
//         my_array.append(3);
//         my_array.append(7);
//         my_array.append(2);
//         my_array.append(5);

//         let value_to_find = 7;
//         let result = find_value_recursive(@my_array, value_to_find, 0);
//         let result_i = find_value_iterative(@my_array, value_to_find);

//         match result {
//             Option::Some(index) => {
//                 if index == 1 {
//                     'it worked'.print();
//                 }
//             },
//             Option::None => {
//                 'not found'.print();
//             },
//         }
//         match result_i {
//             Option::Some(index) => {
//                 if index == 1 {
//                     'it worked'.print();
//                 }
//             },
//             Option::None => {
//                 'not found'.print();
//             },
//         }
//     }
//     // Running this code would print it worked.
//     // unfortunately nothing was printed ooo
// }

