// --- Day 8: Matchsticks ---

use std::fs;
const DAY: &str = "08";


fn first(input: &str) -> usize{

    let mut code: usize = 0;
    let mut memory: usize = 0;
    for l in input.lines() {
        // println!("{:?}", l);

        let mut chars = l.chars();
        loop {
            let o = chars.next();

            if o.is_none() {
                break;
            }
            let c = o.unwrap();
            // println!("{}", c);
            if c == '\"' {
                code += 1;
                continue;
            } else if c == '\\' {
                if chars.next().unwrap() == 'x' {
                    chars.next();
                    chars.next();
                    code += 4;
                    memory += 1;
                } else {
                    code += 2;
                    memory += 1;
                }
            } else {
                code += 1;
                memory += 1;

            }
        }
        // println!("Code: {}, Memory: {}", code, memory);
    }
    code - memory
}

fn second(input: &str) -> usize {
    
    let mut code: usize = 0;
    let mut new: usize = 0;
    
    for l in input.lines() {
        // println!("{:?}", l);

        let mut chars = l.chars();
        loop {
            let o = chars.next();

            if o.is_none() {
                break;
            }
            let c = o.unwrap();
            // println!("{}", c);
            if c == '\"' {
                code += 1;
                new += 3;
                continue;
            } else if c == '\\' {
                if chars.next().unwrap() == 'x' {
                    chars.next();
                    chars.next();
                    code += 4;
                    new += 5;
                } else {
                    code += 2;
                    new += 4;
                }
            } else {
                code += 1;
                new += 1;

            }
        }
        // println!("Code: {}, New: {}", code, new);
    }
    new - code
}

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}\n", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
