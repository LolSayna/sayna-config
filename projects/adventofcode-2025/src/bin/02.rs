// --- Day 2: Gift Shop ---

use std::fs;
const DAY: &str = "02";

fn first(input: &str) -> usize {

    let v: Vec<&str> = input.split_terminator(',').collect();
    let mut invalid: usize = 0;

    for range in v {
        // println!("{range}");
        let mut it = range.split_terminator('-');
        let start = it.next().unwrap().parse::<usize>().unwrap();
        let end = it.next().unwrap().parse::<usize>().unwrap();
        // println!("{start} {end}");

        for id in start..=end {
            // println!("\n{id}");

            let s: String = id.to_string();
            let (first, half) = s.split_at(s.len()/2);
            if first == half {
                // println!("Invalid!");
                invalid += id;
            }    
        }
    }
    invalid
}

fn second(input: &str) -> usize {

    let v: Vec<&str> = input.split_terminator(',').collect();
    let mut invalid: usize = 0;

    for range in v {
        // println!("{range}");
        let mut it = range.split_terminator('-');
        let start = it.next().unwrap().parse::<usize>().unwrap();
        let end = it.next().unwrap().parse::<usize>().unwrap();
        // println!("{start} {end}");

        for id in start..=end {
            
            // println!("\n{id}");
            
            for x in 1..=id.to_string().len()/2 {

                let s: String = id.to_string();
                if s.len() % x != 0 {
                    continue;
                }

                let mut is_valid: bool = false;
                let len = s.len();
                let mut cur: usize = 0;
                // println!("s: {s} x: {x} len: {len}");
                
                while cur+x+x <= len {
                    // println!("cur: {cur} first: {} sec: {}", &s[cur..cur+x], &s[cur+x..cur+x+x]);

                    if &s[cur..cur+x] != &s[cur+x..cur+x+x] {
                        // println!("Valid!");
                        is_valid = true;
                        break;
                    }
                    cur += x;
                }

                if !is_valid {
                    // println!("Invalid: {id}");
                    invalid += id;
                    break;
                }
            }         
        }
    }
    invalid
}

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
