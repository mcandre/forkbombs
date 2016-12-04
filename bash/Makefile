all: lint

shlint:
	find . \( -wholename '*/node_modules*' -o -name '*.bat' \) -prune -o -type f \( -wholename '*/lib/*' -o -name '*.sh' -o -name '*.bashrc*' -o -name '.*profile*' -o -name '*.envrc*' \) -print | xargs shlint

checkbashisms:
	find . \( -wholename '*/node_modules*' -o -name '*.bat' \) -prune -o -type f \( -wholename '*/lib/*' -o -name '*.sh' -o -name '*.bashrc*' -o -name '.*profile*' -o -name '*.envrc*' \) -print | xargs checkbashisms -n -p

shellcheck:
	find . \( -wholename '*/node_modules*' -o -name '*.bat' \) -prune -o -type f \( -wholename '*/lib/*' -o -name '*.sh' -o -name '*.bashrc*' -o -name '.*profile*' -o -name '*.envrc*' \) -print | xargs shellcheck

lint: shlint checkbashisms shellcheck
