#!/bin/bash
#parsing openheimer json results and spitting them
#back out in CSV.
#{IP:Port,Server Name,Version,MaxPlayer,CurPlayer,Player1,...Player99...etc}

for file in ./data/*; do
    FILENAME=$(find $file | cut --characters=8-99)
    DATA=$(cat $file | jq -r '.version.name,.description.text,.players.max,.players.online,.players.Sample[].name' | paste -d , -s)
    RESULT="${FILENAME},${DATA}"
    echo $RESULT
    echo $RESULT >> "./output.csv" ; done