# openheimer-bash-parser
Parses results generated from [ErrorNoInternet/openheimer](https://github.com/ErrorNoInternet/openheimer)

Just parses any file in ./data/ and runs it through [jq](https://github.com/stedolan/jq), concatenates the IP address and pulled results together, and dumped to .csv
it expects that all files do not have .json file extensions.
