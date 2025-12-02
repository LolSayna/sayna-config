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
            println!("\n{id}");
            for x in 1..=id.to_string().len()/2 {
                let s: String = id.to_string();
                println!("s: {s} x: {x}");
                
                let (pat, mut remain) = s.split_at(x);
                println!("Pat: {pat} Remain: {remain}");

                if pat.len() != remain.len() {
                    println!("Wrong len!");
                    // (_, remain) = remain.split(x);
                    println!("Pat: {pat} Remain: {remain}");
                }

                if pat == remain {
                    println!("Invalid!");
                    invalid += id;
                }
                // let remain: String = s.split_off(x);
                // println!("Remain: {remain}");

                // let (y, _) = remain.split_at(x);
                // if pat == y {
                //     println!("Invalid!");
                //     invalid += id;
                // }
            }
            
        }
    }
    invalid
}

// fn second(input: &str) -> usize {

// }

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}", first(&input));
    // println!("Part 2 solution is: {}", second(&input));
}
