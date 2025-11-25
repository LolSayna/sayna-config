// --- Day 2: I Was Told There Would Be No Math ---

use std::fs;
const DAY: &str = "02";

use std::cmp::min;
fn first(input: &str) -> usize{

    let mut paper: usize = 0;

    for l in input.lines() {
        // println!("{l}");
        let v: Vec<&str> = l.split_terminator('x').collect();

        let l: usize = v[0].parse::<usize>().unwrap();
        let w: usize = v[1].parse::<usize>().unwrap();
        let h: usize = v[2].parse::<usize>().unwrap();
        
        // println!("{} {} {}", l, w, h);
        paper += 2*l*w + 2*w*h + 2*h*l + min(min(l*w, w*h), h*l);
    }
    paper
}

fn second(input: &str) -> usize {

    let mut ribbon: usize = 0;

    for l in input.lines() {
        let v: Vec<&str> = l.split_terminator('x').collect();

        let l: usize = v[0].parse::<usize>().unwrap();
        let w: usize = v[1].parse::<usize>().unwrap();
        let h: usize = v[2].parse::<usize>().unwrap();

        let mut n: Vec<usize> = vec![l, w, h];
        n.sort();

        // println!("{:?}", n);

        ribbon += n[0] + n[0] + n[1] + n[1] + l*w*h;
        // println!("{:?}", ribbon);
    }
    ribbon
}

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}")

    println!("Part 1 solution is: {}", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
