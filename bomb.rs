// bomb.rs
// Andrew Pennebaker
// 7 Feb 2012

use std;

fn bomb() {
	while true {
		task::spawn(bomb);
	}
}

fn main() {
	task::spawn(bomb);
}