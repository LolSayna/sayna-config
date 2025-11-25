// --- Day 1: Not Quite Lisp ---

use std::fs;
const DAY: &str = "01";

fn first(input: &str) -> isize {

    let mut count: isize = 0;

    for c in input.chars() {
        // println!("{i}, {c}");
        if c == '(' {
            count += 1;
        } else if c == ')' {
            count -= 1;
        }
    }
    count
}

fn second(input: &str) -> usize {

    let mut count: isize = 0;

    for (i, c) in input.char_indices() {
        // println!("{i}, {c}");
        if c == '(' {
            count += 1;
        } else if c == ')' {
            count -= 1;
            if count < 0{
                return i;
            }
        }
    }
    panic!();
}

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    //println!("Input:  {input}")

    println!("Part 1 solution is: {}", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
