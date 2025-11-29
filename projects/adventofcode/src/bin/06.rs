// --- Day 6: Probably a Fire Hazard ---

use std::fs;
const DAY: &str = "06";

fn first(input: &str) -> usize{

    const GRID: usize = 1000;

    let mut on = [[0u8; GRID]; GRID];
    let mut result: usize = 0;

    for l in input.lines() {
        let v: Vec<&str> = l.split_terminator(' ').collect();
        match v[0] {
            "turn" => {
                match v[1] {
                    "on" => {
                        // println!("on");
                        let start: Vec<usize> = v[2].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                        let end: Vec<usize> = v[4].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                        for x in start[0]..=end[0] {
                            for y in start[1]..=end[1] {
                                on[y][x] = 1;
                            }
                        }
                        
                    },
                    "off" => {
                        // println!("off");
                        let start: Vec<usize> = v[2].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                        let end: Vec<usize> = v[4].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                        for x in start[0]..=end[0] {
                            for y in start[1]..=end[1] {
                                on[y][x] = 0;
                            }
                        }
                    },
                    &_ => todo!(),
                }
            }
            "toggle" => {
                // println!("toggle");
                let start: Vec<usize> = v[1].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                let end: Vec<usize> = v[3].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                for x in start[0]..=end[0] {
                    for y in start[1]..=end[1] {
                        if on[y][x] == 0 {
                            on[y][x] = 1;
                        } else {
                            on[y][x] = 0;
                        }
                    }
                }
            },
            &_ => todo!(),
        }
    }

    for x in 0..GRID {
        for y in 0..GRID {
            if on[y][x] == 1 {
                result += 1;
            }
        }
        // println!("{x}");
    }
    result
}

fn second(input: &str) -> usize{

    const GRID: usize = 1000;

    let mut on = [[0u8; GRID]; GRID];

    for l in input.lines() {
        let v: Vec<&str> = l.split_terminator(' ').collect();
        match v[0] {
            "turn" => {
                match v[1] {
                    "on" => {
                        // println!("on");
                        let start: Vec<usize> = v[2].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                        let end: Vec<usize> = v[4].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                        for x in start[0]..=end[0] {
                            for y in start[1]..=end[1] {
                                on[y][x] += 1;
                            }
                        }
                        
                    },
                    "off" => {
                        // println!("off");
                        let start: Vec<usize> = v[2].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                        let end: Vec<usize> = v[4].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                        for x in start[0]..=end[0] {
                            for y in start[1]..=end[1] {
                                if on[y][x] > 0 {
                                    on[y][x] -= 1;
                                }
                            }
                        }
                    },
                    &_ => todo!(),
                }
            }
            "toggle" => {
                // println!("toggle");
                let start: Vec<usize> = v[1].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                let end: Vec<usize> = v[3].split_terminator(',').map(|x|->usize{x.parse().unwrap()}).collect();
                for x in start[0]..=end[0] {
                    for y in start[1]..=end[1] {
                        on[y][x] += 2;
                    }
                }
            },
            &_ => todo!(),
        }
    }

    let mut result: usize = 0;
    for x in 0..GRID {
        for y in 0..GRID {
            result += on[y][x] as usize;
        }
        // println!("{x}");
    }
    result
}

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}\n", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
