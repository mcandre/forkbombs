// Package main provides a forkbomb executable.
package main

// Main recursively forks itself, without a basecase.
// Monitor resources, and preferably run in a virtualized or isolated environment.
func main() {
	for {
		go main()
	}
}
