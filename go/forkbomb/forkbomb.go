package forkbomb

// Bomb spawns goroutines.
// Monitor resources, and preferably run in a virtualized or isolated environment.
func Bomb() {
	for {
		go Bomb()
	}
}
