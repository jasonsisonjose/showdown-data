# showdown-data
Pokémon Showdown data as JSON files.

This project takes the latest data from Pokémon Showdown JavaScript files and converts it
to JSON format so it can be used in any kind of project.

## Usage

All JSON files are located under the `dist/data` folder.


## Maintenance

Dependencies: Docker, git and node (for publishing).

- **Install**: `make install`
- **Build dist**: `make build`
- **Upgrade Showdown and dependencies**: `make upgrade`
- **Set version and new tag to current date**: `make tag`
- **Publish to NPM**: `make publish`

### Upgrading

To upgrade the `dist` folder with the latest Showdown changes run `make upgrade`.
