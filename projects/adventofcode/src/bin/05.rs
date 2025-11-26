// --- Day 5: Doesn't He Have Intern-Elves For This? ---

use std::fs;
const DAY: &str = "05";

fn first(input: &str) -> usize{

    let mut nice: usize = 0;
    for l in input.lines() {
        // println!("{:?}", l);

        if l.contains("ab") || l.contains("cd") || l.contains("pq") || l.contains("xy"){
            // println!("Naugthy: bad string!");
            continue;
        }

        let mut vowels: usize = 0;
        let mut last: char = '\n';
        let mut twice: bool = false;
        for c in l.chars(){
            if "aeiou".contains(c){
                vowels += 1;
            }
            if c == last {
                twice = true;
            }
            last = c;
        }
        if vowels < 3 {
            // println!("Naugthy: to few vowels!");
            continue;
        }
        if !twice {
            // println!("Naugthy: no twice letter!");
            continue;
        }

        nice += 1;
    }
    nice
}

use std::collections::HashMap;
fn second(input: &str) -> usize{

    let mut nice: usize = 0;
    for l in input.lines() {
        // println!("{:?}", l);

        let mut last: char = '\n';
        let mut between: char = '\n';
        let mut repeat: bool = false;
        let mut pairs = HashMap::new();
        let mut found_pair: bool = false;
        let mut key: String;
        for (i, c) in l.char_indices(){
            if c == last {
                repeat = true;
            }
            key = format!("{},{}", between, c);
            if pairs.contains_key(&key) {
                // println!("I: {} vs in map: {}", i, pairs[&key]);
                if i - pairs[&key] > 1 {
                    found_pair = true;
                }
            } else {
                pairs.insert(key, i);
            }

            last = between;
            between = c;

            // println!("{:?}", pairs);
        }

        if !repeat {
            println!("Naugthy: no twice letter!");
            continue;
        }
        if !found_pair {
            println!("Naugthy: no found_pair!");
            continue;
        }

        nice += 1;
    }
    nice
}

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}\n", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
