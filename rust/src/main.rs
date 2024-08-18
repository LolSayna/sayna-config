use ferris_says::say;
use rand::Rng;
use std::cmp::Ordering;
use std::io;
use std::io::{stdout, BufWriter};

/* Zahlenratenspiel */
fn main() {
    println!("Rate die Zahl!");

    // range inklusive (1..493) wäre exklusiv
    let sec = rand::thread_rng().gen_range(1..=493);

    // TODO remove later
    println!("GEHEIMNIS: {sec}");

    loop {
        println!("Gebe deine Zahl ein:");

        let mut gue = String::new();
        io::stdin().read_line(&mut gue).expect("Fehler bei Eingabe");

        // what a fancy match syntax :O
        let gue: u32 = match gue.trim().parse() {
            Ok(num) => num,
            Err(_) => continue, // _ means wildcard
        };

        println!("Dein Tipp ist: {gue}");
        match gue.cmp(&sec) {
            Ordering::Less => println!("Zu klein!"),
            Ordering::Greater => println!("Zu groß!"),
            Ordering::Equal => {
                break;
            }
        }
    }

    let stdout = stdout();
    let message = String::from("Du hast gewonnen");
    let w = message.chars().count();

    let mut writer = BufWriter::new(stdout.lock());
    say(&message, w, &mut writer).unwrap();
}
