//////////////////////////////////////////
//////        code OKAY         //////////
//////       ENUMS             ///////////
////////////////////////////////////////
use debug::PrintTrait;

#[derive(Drop)]
enum Direction {
    North,
    East,
    South,
    West,
}

enum Message {
    Quit,
    Echo: felt252,
    Move: (u128, u128),
}

trait Processing {
    fn process(self: Message);
    fn moving(self: Direction);
}

impl ProcessingImpl of Processing {
    fn process(self: Message) {
        match self {
            Message::Quit =>  'quitting'.print(),
            Message::Echo(value) => { value.print(); },
            // Message::Move((x, y)) => { 'moving'.print(); },

            // Trying to add the parameters and I got it... I.M GREAT
            Message::Move((x, y)) => { (x + y).print(); },
        }
    }

    fn moving(self: Direction) {
        match self {
            Direction::North => 1.print(),
            Direction::East => 2.print(),
            Direction::South => 3.print(),
            Direction::West => 4.print(),
        }
    }
}

fn running_abt(direction: Direction) -> felt252{
        match direction {
            Direction::North => 1,
            Direction::East => 2,
            Direction::South => 3,
            Direction::West => 4,
        }
    }   

fn main() {

    // TRYING IT OUT (using impl)
    let msg: Message = Message::Quit;
    msg.process();
    let msg_1: Message = Message::Echo(67);
    msg_1.process();
    let msg_2: Message = Message::Move((33, 66));
    msg_2.process(); //I'm adding it! I'M GREAT

    // ...using "impl"
    let dir: Direction = Direction::North;
    dir.moving();               // print 1 with "impl"

    // ANOTHER METHOD [no impl but function]
     let dir = running_abt(Direction::North);
    dir.print();                // print 1 also with "function"

    let dir = running_abt(Direction::South);
    dir.print();

    // ANOTHER STYLE [no impl but function]
    running_abt(Direction::West).print();

}
/////////////CODE END////////////////
/////////////////////////////////////



//////////////////////////////////////////
//////    NO expected output    //////////
////////     OPTION ENUM        //////////
//////////////////////////////////////////

// #[derive(Drop)]
// enum Option<T> {
//     Some: T,
//     None: (),
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
//             enums::Option::Some(index) => {
//                 if index == 1 {
//                     'it worked'.print();
//                 }
//             },
//             enums::Option::None => {
//                 'not found'.print();
//             },
//         }
//         match result_i {
//             enums::Option::Some(index) => {
//                 if index == 1 {
//                     'it worked'.print();
//                 }
//             },
//             enums::Option::None => {
//                 'not found'.print();
//             },
//         }
//     }
// }

// fn main() {}
/////////////CODE END////////////////
/////////////////////////////////////



//////////////////////////////////////////
//////        code OKAY         //////////
//////match control flow for enums////////
//////////////////////////////////////////
// use debug::PrintTrait;

// #[derive(Drop)]
// enum UsState {
//     Alabama,
//     Alaska,
// }

// #[derive(Drop)]
// enum Coin {
//     Penny,
//     Nickel,
//     Dime,
//     Quarter: UsState,
// }

// impl UsStatePrintImpl of PrintTrait<UsState> {
//     fn print(self: UsState) {
//         match self {
//             UsState::Alabama => ('Alabama').print(),
//             UsState::Alaska => ('Alaska').print(),
//         }
//     }
// }

// fn value_in_cents(coin: Coin) -> felt252 {
//     match coin {
//         Coin::Penny(_) => {
//             ('Lucky penny!').print();
//             1
//         },
//         Coin::Nickel => 5,
//         Coin::Dime => 10,
//         Coin::Quarter(state) => {
//             state.print();
//             25
//         },
//     }
// }

// fn main() {
//     value_in_cents(Coin::Dime).print();
//     value_in_cents(Coin::Penny).print();
//     value_in_cents(Coin::Quarter(UsState::Alabama(()))).print();
//     let alska = value_in_cents(Coin::Quarter(UsState::Alaska(())));
//     alska.print()
// }
/////////////CODE END////////////////
/////////////////////////////////////



//////////////////////////////////////////
//////        code OKAY         //////////
//////           OPTION           ////////
//////////////////////////////////////////
// use debug::PrintTrait;
// fn plus_one(x: Option<u8>) -> Option<u8> {
//     match x {
//         Option::Some(val) => Option::Some(val + 1),
//         Option::None(_) => Option::None,
//     }
// }

// fn main() {
//     let five: Option<u8> = Option::Some(5);
//     let six: Option<u8> = plus_one(five);
//     six.unwrap().print();
//     let none = plus_one(Option::None);
//     none.unwrap().print();
// }
/////////////CODE END////////////////
/////////////////////////////////////


