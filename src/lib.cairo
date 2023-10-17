use debug::PrintTrait;

fn main() {

    let msg: Message = Message::Quit;
    msg.process();
    let ech: Message = Message::Echo(16);
    ech.process();
    let mve: Message = Message::Move((11, 9));
    mve.process();

}

#[derive(Drop)]
enum Message {
    Quit,
    Echo: felt252,
    Move: (u128, u128),
}

trait Processing {
    fn process(self: Message);
}

impl ProcessingImpl of Processing {
    fn process(self: Message) {
        match self {
            Message::Quit => { 'quitting'.print(); },
            Message::Echo(value) => { value.print(); },
            Message::Move((x, y)) => { 'moving'.print(); },
        }
    }
}
