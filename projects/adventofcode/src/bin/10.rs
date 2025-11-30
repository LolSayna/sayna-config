// --- Day 10: Elves Look, Elves Say ---

use std::fs;
const DAY: &str = "10";

fn look_say(s: &str) -> String{
    // println!("{:?}", s);
    let mut res: String = String::new();
    let mut it = s.chars();
    let mut c: char = it.next().unwrap();
    let mut count: usize = 1;
    loop {
        let nxt: Option<char> = it.next();
        match nxt {
            Some(x) => {
                // println!("nxt: {:?}, c: {c}, count: {count}", nxt);
                if x == c {
                    count += 1;
                } else {
                    res.push_str(&count.to_string());
                    res.push(c);
                    count = 1;
                    c = x;
                }
                
            },
            None => {
                res.push_str(&count.to_string());
                res.push(c);
                break;
            },
        }
    }
    // println!("Res is: {:?}", res);
    res.to_string()
}

fn first(input: &str) -> usize{
    let mut res: String = String::new();
    let mut next: String = input.to_string();
    for _ in 0..40 {
        res = look_say(next.as_str());
        next = res.clone();
    }
    res.len()
}

fn second(input: &str) -> usize{
    let mut res: String = String::new();
    let mut next: String = input.to_string();
    for _ in 0..50 {
        res = look_say(next.as_str());
        next = res.clone();
    }
    res.len()
}

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}\n", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
