// --- Day 1: Secret Entrance ---

use std::fs;
const DAY: &str = "01";

use std::str::FromStr;
fn first(input: &str) -> usize {

    let mut pos: usize = 50;
    let mut counter: usize = 0;

    for l in input.lines() {
        // println!("{pos}");

        let (dir, clicks) = l.split_at(1);
        match dir {
            "L" => {
                pos = ((pos + 1000) - usize::from_str(clicks).unwrap()) % 100;
                if pos == 0 {
                    counter += 1;
                }
            },
            "R" => {
                pos = (pos + usize::from_str(clicks).unwrap()) % 100;
                if pos == 0 {
                    counter += 1;
                }
            },
            &_ => todo!()
        }
        // println!("{dir} {clicks}");
    }
    counter
}

fn second(input: &str) -> usize {

    let mut pos: usize = 50;
    let mut counter: usize = 0;

    for l in input.lines() {
        println!("{pos} {counter}");

        let (dir, clicks) = l.split_at(1);
        match dir {
            "L" => {
                for _ in 0..usize::from_str(clicks).unwrap() {
                    if pos == 0 {
                        pos = 99;
                    } else {
                        pos -= 1;
                        if pos == 0 {
                            counter += 1;
                        }
                    }
                }
            },
            "R" => {
                for _ in 0..usize::from_str(clicks).unwrap() {
                    pos = (pos + 1) % 100;
                    if pos == 0 {
                        counter += 1;
                    }
                }
            },
            &_ => todo!()
        }
        println!("{dir} {clicks}");
    }
    counter
}

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
