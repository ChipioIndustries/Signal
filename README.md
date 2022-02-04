![Unit Tests](https://github.com/chipioindustries/signal/actions/workflows/ci.yml/badge.svg)
![Create Release](https://github.com/chipioindustries/signal/actions/workflows/release.yml/badge.svg)
![Docs Deploy](https://github.com/chipioindustries/signal/actions/workflows/docs-deploy.yml/badge.svg)

# Signal

A Signal implementation that doesn't make use of BindableEvents.

## SETTING UP REPOSITORY (REMOVE THIS)

* Copy this repository's contents into a new repository
* Find and replace all instances of the following terms:

|Term|Replace with|
|-|-|
|chipioindustries|your github username|
|signal|your package name|
|Signal|your package name as it appears to users and as a Studio instance|
|A Signal implementation that doesn't make use of BindableEvents.|your package description|
|A Signal implementation that doesn't make use of BindableEvents.|your package tagline|

* Copy the contents of your .wally/auth.toml file into a Github secret named "WALLY_AUTH"

## Installing with Wally

* Add this line to your `wally.toml` file under `[dependencies]`:

	```toml
	Signal = "chipioindustries/signal@0.1.0"
	```

* Then run `wally install` to install the package.

For more installation methods and usage instructions, see the [documentation](https://chipioindustries.github.io/signal).
