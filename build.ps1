#Download grafana
wget https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-5.2.2.windows-amd64.zip -O out.zip
PowerShell Expand-Archive -Path ".\\out.zip" -DestinationPath .

#Remove unused directories
mv .\grafana-5.2.2\* .
rm -f out.zip
rm -rf .\grafana-5.2.2\

#Download plugins
.\bin\grafana-cli --pluginsDir .\data\plugins plugins install grafana-simple-json-datasource
.\bin\grafana-cli --pluginsDir .\data\plugins plugins install grafana-piechart-panel
git clone https://github.com/mbarekh/grafana-diagram .\data\plugins\jdbranham-diagram-panel