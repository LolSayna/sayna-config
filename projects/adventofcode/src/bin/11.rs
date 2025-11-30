// --- Day 11: Corporate Policy ---

use std::fs;
const DAY: &str = "11";

fn increment(s: &str) -> String{
    let mut res: String = String::with_capacity(s.len());
    let mut done: bool = false;
    for c in s.chars().rev() {
        let new: char;
        if done {
            new= c;
        } else {
            if c == 'z' {
                new = 'a';
            } else {
                new = char::from_u32((c as u32 + 1) as u32).unwrap();
                done = true;
            }
        }
        
        // println!("{i} {c} {new}");
        res.push(new);
        // break;
    }
    res.chars().rev().collect::<String>()
}

use std::collections::HashSet;
fn first(input: &str) -> String{
    // println!("{input}");
    let mut res: String;
    let mut next: String = input.to_string();
    loop {
        res = increment(next.as_str());
        next = res.clone();
        // println!("{res}");

        if res.contains("o") || res.contains("i") ||res.contains("l") {
            // println!("Second!");
            continue;
        }

        let mut straight: bool = false;
        let mut last: char = 'X';
        let mut between: char = 'X';
        let mut pair_pos = HashSet::new();
        let mut pair_types = HashSet::new();
        
        for (i, c) in res.char_indices() {
            // println!("{i} {last} {between} {c}");
            
            if last as usize + 1 == between as usize && between as usize + 1 == c as usize {
                straight = true;
                // println!("Found pair!");
            }

            if between == c {
                // key = format!("{}", c);
                if !pair_pos.contains(&(i-1)) {
                    pair_types.insert(c);
                    pair_pos.insert(i);
                }
            }

            last = between;
            between = c;
        }

        if straight && pair_types.len() > 1 && pair_pos.len() > 1 {
            break;
        }
    }
    res

}

// fn second(input: &str) -> usize{

// }

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}\n", first(&input));
    println!("Part 2 solution is: {}", first(&first(&input)));
}
