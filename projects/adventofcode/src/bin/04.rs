// --- Day 4: The Ideal Stocking Stuffer ---

use std::fs;
const DAY: &str = "04";

use md5;
fn first(input: &str) -> usize{

    let mut num: usize = 1;
    let mut secret: String;
    let mut hash: String;
    loop {
        secret = format!("{}{}", input, num);
        hash = format!("{:x}", md5::compute(&secret));
        if hash.starts_with("00000") {
            println!("For secret: {secret}");
            println!("Found hash: {hash}");
            return num;
        }
        num += 1;
    }
}
fn second(input: &str) -> usize{

    let mut num: usize = 1;
    let mut secret: String;
    let mut hash: String;
    loop {
        secret = format!("{}{}", input, num);
        hash = format!("{:x}", md5::compute(&secret));
        if hash.starts_with("000000") {
            println!("For secret: {secret}");
            println!("Found hash: {hash}");
            return num;
        }
        num += 1;
    }
}


fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
