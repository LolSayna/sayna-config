// --- Day 9: All in a Single Night ---

use std::fs;
const DAY: &str = "09";

// Es ist bestimmt möglich hier eine coole Recursion zu bauen, aber schwierig. Auch weil &str blöd als paramater ist zu kopieren

// fn search(nodes: & HashSet<String>, connections: & HashMap<&str, HashMap<&str, usize>>, current: String) -> usize {
//     println!("{:?}", current);
//     let c: &str = &current;
//     let cost: usize = 0;
    
//     for dest in &connections[c] {
//         println!("{:?}", dest);
//         let target: String = format!("{current} {0}", dest.0);
//         println!("{:?}", target);
//         // search(nodes, connections, )
//     }
//     7
// }

// HashMap of HashMap war echt nerfig anzusteuern

use std::collections::HashSet;
use std::collections::HashMap;
use itertools::Itertools;
fn first(input: &str) -> usize{

    let mut nodes: HashSet<&str> = HashSet::new();
    let mut connections: HashMap<&str, HashMap<&str, usize>> = HashMap::new();
    let mut v: Vec<&str>;

    for l in input.lines() {
        v = l.split_terminator(' ').collect();

        nodes.insert(v[0]);
        nodes.insert(v[2]);

        match connections.get_mut(v[0]) {
            Some(val) => {
                val.insert(v[2], v[4].parse::<usize>().unwrap())
            },
            None => {
                connections.insert(v[0], HashMap::new());
                connections.get_mut(v[0]).unwrap().insert(v[2], v[4].parse::<usize>().unwrap())
            }
        };

        match connections.get_mut(v[2]) {
            Some(val) => {
                val.insert(v[0], v[4].parse::<usize>().unwrap())
            },
            None => {
                connections.insert(v[2], HashMap::new());
                connections.get_mut(v[2]).unwrap().insert(v[0], v[4].parse::<usize>().unwrap())
            }
        };
    }
    let mut best: usize = usize::MAX;

    for perm in nodes.iter().permutations(nodes.len()) {

        // println!("{:?}", perm);

        let mut it = perm.iter();
        let mut loc: &str = it.next().unwrap();
        let mut fail: bool = false;
        let mut res: usize = 0;

        loop {
            // println!("Current: {:?}", loc);
            match it.next() {
                Some(n) => {
                    if connections.get(&loc).unwrap().contains_key(&n as &str) {
                        res += connections.get(&loc).unwrap().get(&n as &str).unwrap();
                    } else {
                        fail = true;
                        break;
                    }
                    loc = n;
                },
                None => {
                    break;
                }
            }
        }
        // println!("fail: {fail} {:?} {:?}", res, best);
        if !fail && res < best {
            best = res;
        }

    }

    // println!("{:?}{:?}", nodes, connections);
    best
}

fn second(input: &str) -> usize{

    let mut nodes: HashSet<&str> = HashSet::new();
    let mut connections: HashMap<&str, HashMap<&str, usize>> = HashMap::new();
    let mut v: Vec<&str>;

    for l in input.lines() {
        v = l.split_terminator(' ').collect();

        nodes.insert(v[0]);
        nodes.insert(v[2]);

        match connections.get_mut(v[0]) {
            Some(val) => {
                val.insert(v[2], v[4].parse::<usize>().unwrap())
            },
            None => {
                connections.insert(v[0], HashMap::new());
                connections.get_mut(v[0]).unwrap().insert(v[2], v[4].parse::<usize>().unwrap())
            }
        };

        match connections.get_mut(v[2]) {
            Some(val) => {
                val.insert(v[0], v[4].parse::<usize>().unwrap())
            },
            None => {
                connections.insert(v[2], HashMap::new());
                connections.get_mut(v[2]).unwrap().insert(v[0], v[4].parse::<usize>().unwrap())
            }
        };
    }
    let mut best: usize = 0;

    for perm in nodes.iter().permutations(nodes.len()) {

        // println!("{:?}", perm);

        let mut it = perm.iter();
        let mut loc: &str = it.next().unwrap();
        let mut fail: bool = false;
        let mut res: usize = 0;

        loop {
            // println!("Current: {:?}", loc);
            match it.next() {
                Some(n) => {
                    if connections.get(&loc).unwrap().contains_key(&n as &str) {
                        res += connections.get(&loc).unwrap().get(&n as &str).unwrap();
                    } else {
                        fail = true;
                        break;
                    }
                    loc = n;
                },
                None => {
                    break;
                }
            }
        }
        // println!("fail: {fail} {:?} {:?}", res, best);
        if !fail && res > best {
            best = res;
        }

    }

    // println!("{:?}{:?}", nodes, connections);
    best
}

fn main() {
    println!("Starting Challenge: {DAY}");
    println!("{}", format!("src/bin/{}.txt", DAY));
    let input: String = fs::read_to_string(format!("src/bin/{}.txt", DAY)).unwrap();

    // println!("Input:  {input}");

    println!("Part 1 solution is: {}\n", first(&input));
    println!("Part 2 solution is: {}", second(&input));
}
