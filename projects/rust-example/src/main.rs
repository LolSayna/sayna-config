use ferris_says::say;
use rand::Rng;
use std::cmp::Ordering;

// get library into scope
use std::io;
// use specific Module
use std::io::{stdout, BufWriter};

/* Main function, always gets called first.
 * Declaration order irelevant.
 * */
fn main() {
    // game();

    let mut userin = String::new();
    io::stdin()
        .read_line(&mut userin)
        .expect("Fehler bei Eingabe");
    let userin: f64 = match userin.trim().parse() {
        Ok(num) => num,
        Err(_) => -1.0, // _ means wildcard
    };
    let fah = convert_to_fahrenheit(userin);

    println!("C: {userin} and Fahrenheit: {fah}");
}

fn convert_to_fahrenheit(c: f64) -> f64 {
    c * 1.8 + 32.0
}

fn game() {
    // range inclusive!
    // (1..493) would be exclusive 493
    let sec = rand::thread_rng().gen_range(1..=493);

    // print macro incl placeholder variable
    println!("GEHEIMNIS: {sec}");

    loop {
        println!("Gebe deine Zahl ein:");

        // mut keyword, without vars are immutable
        let mut gue = String::new();
        // read_line returns "Result", expect triggers if "Result" = Err
        io::stdin().read_line(&mut gue).expect("Fehler bei Eingabe");

        // shadow gue -> reuse var name + parse into u32
        // if it fails continue the main loop
        let gue: u32 = match gue.trim().parse() {
            Ok(num) => num,
            Err(_) => continue, // _ means wildcard
        };

        // match comparison
        match gue.cmp(&sec) {
            Ordering::Less => println!("Zu klein!"),
            Ordering::Greater => println!("Zu groß!"),
            Ordering::Equal => {
                win(gue);
                break;
            }
        }
    }
}

// fn with parameter, _ indicated value is not used
fn win(_num: u32) {
    let stdout = stdout();
    let message = String::from("Du hast gewonnen");
    let w = message.chars().count();

    let mut writer = BufWriter::new(stdout.lock());
    say(&message, w, &mut writer).unwrap();
}
