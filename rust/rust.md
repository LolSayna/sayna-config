# Rust

## Install + Cargo
> [!IMPORTANT]
> `curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh`

Compiler: `rustc` \
New Project: `cargo new NAME` \
Check/Build/Execute: `cargo check/build/run` \
Release:: `cargo build --release`

Cargo.toml = Dependencies in a broad sense 

Cargo.lock = Exact information about your dependencies
> put into Git so everyone builds with the same version, without hardcoding the versions

## Keywords
use | fn/return | let (mut) | const [global scope possible] | shadowing [reuse var name, also change type]

println!()

match,| expect Ok/Err | cmp + Ordering::

loop [loop labels to jump between inner and outer loops] | break | continue | if/else/else if | while | for

String::new/from | 

## Datatype
i8 / u8 -> i128 / u128 oder isize/usize for architecure dependend \
overflows panic at debug mode, at release not!

f32 / f64 | bool | char [unicode]

tupel [any types, can be unpacked or .0 .1] | arrays [same typ, fixed length]

## Conzepts

### Statement vs Expression
- **Statements** are instructions that perform some action and do not return a value.
- **Expressions** evaluate to a resultant value.

In function implicite return the last expression, no ; needed.

### Stack vs Heap
Fixed size + fast access vs slower but bigger
Default copy vs default move (copy explicit)

## Ownership
- each value exact 1 owner, automatically drop when scope left
- Drop function, clone function, Copy trait (Stack only)

String literal (fixed Size) vs String Type (Variable length)
Function calls pass ownership

## Referenze
&Name to not pass ownership, instead point to it. No drop at the end + immutable.
Exactly 1 &mut reference possible, but then not even read references (its okay if references are not used after &mut is created)
Functions should not return references, instead the object (because it is dropped otherwise)
