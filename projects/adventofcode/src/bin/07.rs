// --- Day 7: Some Assembly Required ---

use std::fs;
const DAY: &str = "07";

use std::collections::VecDeque;
use std::collections::HashMap;

// 'a guarantess that the lifetime of both parameters is the same (I think?)
fn process<'a>(inst: &mut VecDeque<&'a str>, wires: &mut HashMap<&'a str, u16>, is_second: bool){
    
    let mut l: &str;
    let mut v: Vec<&str>;

    while !inst.is_empty() {
        l = inst.pop_front().unwrap();
        v = l.split_terminator(' ').collect();
        // println!("{:?} {:?}", l, v);

        if v[1] == "->" {
            // println!("Assign");
            if v[0].chars().next().unwrap().is_numeric() {
                if is_second && v[2] == "b" {
                    // 
                } else {
                    wires.insert(v[2], v[0].parse::<u16>().unwrap());
                }
            } else {
                if wires.contains_key(v[0]) {
                    wires.insert(v[2], wires[v[0]]);
                } else {
                    inst.push_back(l);
                }
            }
        } else if v[2] == "->" {
            // println!("Not");
            if wires.contains_key(v[1]) {
                wires.insert(v[3], !wires[v[1]]);
            } else {
                inst.push_back(l);
            }
         
        } else if v[3] == "->" {
            // println!("Ternary");
            let a: Option<u16> = {
                if wires.contains_key(v[0]) {
                    Some(wires[v[0]])
                } else if v[0].chars().next().unwrap().is_numeric() {
                    Some(v[0].parse::<u16>().unwrap())
                } else {
                    None
                }
            };
            let b: Option<u16> = {
                if wires.contains_key(v[2]) {
                    Some(wires[v[2]])
                } else if v[2].chars().next().unwrap().is_numeric(){
                    Some(v[2].parse::<u16>().unwrap())
                } else {
                    None
                }
            };
            match v[1] {
                "AND" => {
                    if a.is_some() && b.is_some() {
                        wires.insert(v[4], a.unwrap() & b.unwrap());
                    } else {
                        inst.push_back(l);
                    }
                },
                "OR" =>  {
                    if a.is_some() && b.is_some() {
                        wires.insert(v[4], a.unwrap() | b.unwrap());
                    } else {
                        inst.push_back(l);
                    }
                },
                "LSHIFT" =>  {
                    if a.is_some() && b.is_some(){
                        wires.insert(v[4], a.unwrap() << b.unwrap());
                    } else {
                        inst.push_back(l);
                    }
                },
                "RSHIFT" =>  {
                    if a.is_some() && b.is_some(){
                        wires.insert(v[4], a.unwrap() >> b.unwrap());
                    } else {
                        inst.push_back(l);
                    }
                },
                &_ => todo!(),
            };
        }
        //println!("{:?}", wires);
    }
}

fn first(input: &str) -> usize{

    let mut inst: VecDeque<&str> = VecDeque::new();
    let mut wires: HashMap<&str, u16> = HashMap::new();

    for l in input.lines() {
        inst.push_back(l);
    }

    process(&mut inst, &mut wires, false);
    
    if wires.contains_key("a") {
        wires["a"].into()
    } else {
        5
    }

}

// Cursed solution, calculate a, then write a's value to b and reset all wires. Further disable writing to b!
fn second(input: &str) -> usize {
    let a: usize = first(&input);

    let mut inst: VecDeque<&str> = VecDeque::new();
    let mut wires: HashMap<&str, u16> = HashMap::new();

    wires.insert("b", a as u16);
    for l in input.lines() {
        inst.push_back(l);
    }

    process(&mut inst, &mut wires, true);
    
    if wires.contains_key("a") {
        wires["a"].into()
    } else {
        5
    }
}

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}\n", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
