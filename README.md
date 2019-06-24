# showdown-data
Pokémon Showdown data in JSON format for cross-project interoperability.

This project takes the latest data from Pokémon Showdown JavaScript files and converts it
to JSON format so it can be used in other (non-JavaScript) projects.

## Usage

All JSON files are located under the `dist/data` folder.

To re-generate the `dist` folder with the latest Showdown changes these two commands are needed:

```bash
yarn upgrade
npm run build
```
