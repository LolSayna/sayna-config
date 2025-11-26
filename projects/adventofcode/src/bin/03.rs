// --- Day 3: Perfectly Spherical Houses in a Vacuum ---

use std::fs;
const DAY: &str = "03";

use std::collections::HashSet;
fn first(input: &str) -> usize{

    let mut x: isize = 0;
    let mut y: isize = 0;
    let mut seen = HashSet::new();

    seen.insert(format!("{},{}", x, y));
    for c in input.chars() {
        // println!("{i}, {c}");
        if c == '^' {
            y -= 1;
        } else if c == 'v' {
            y += 1;
        } else if c == '<' {
            x -= 1;
        } else if c == '>' {
            x += 1;
        }
        seen.insert(format!("{},{}", x, y));
    }
    // println!("{:?}", seen);
    seen.len()
}

fn second(input: &str) -> usize {
    
    let mut x: isize = 0;
    let mut y: isize = 0;
    let mut x2: isize = 0;
    let mut y2: isize = 0;
    let mut seen = HashSet::new();
    let mut is_robo: bool = false;

    seen.insert(format!("{},{}", x, y));
    for c in input.chars() {
        // println!("{i}, {c}");
        if is_robo {
            if c == '^' {
                y2 -= 1;
            } else if c == 'v' {
                y2 += 1;
            } else if c == '<' {
                x2 -= 1;
            } else if c == '>' {
                x2 += 1;
            }
            seen.insert(format!("{},{}", x2, y2));
            is_robo = false;
        } else {
            if c == '^' {
                y -= 1;
            } else if c == 'v' {
                y += 1;
            } else if c == '<' {
                x -= 1;
            } else if c == '>' {
                x += 1;
            }
            seen.insert(format!("{},{}", x, y));
            is_robo = true;
        }
    }
    println!("{:?}", seen);
    seen.len()
}


fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
