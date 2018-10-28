//! Build configuration

extern crate tinyrick;
extern crate tinyrick_extras;

/// Run clippy
fn clippy() {
  tinyrick_extras::clippy();
}

/// Run linters
fn lint() {
  tinyrick::deps(clippy);
}

/// Compile project
fn build() {
  tinyrick_extras::build();
}

/// Generate documentation
fn doc() {
  tinyrick_extras::doc();
}

/// Install applications
fn install_binaries() {
  tinyrick_extras::install_binaries();
}

/// Install artifacts
fn install() {
  tinyrick::deps(install_binaries);
}

/// Uninstall artifacts
fn uninstall() {
  tinyrick_extras::uninstall();
}

/// Publish to crate repository
fn publish() {
  tinyrick_extras::publish();
}

/// Run cargo clean
fn clean_cargo() {
  tinyrick_extras::clean_cargo();
}

/// Clean workspaces
fn clean() {
  tinyrick::deps(clean_cargo);
}

tinyrick::wubba_lubba_dub_dub!(
  build;
  clippy,
  lint,
  doc,
  install_binaries,
  install,
  uninstall,
  publish,
  clean_cargo,
  clean
);
