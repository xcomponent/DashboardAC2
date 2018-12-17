#Download grafana
wget https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-5.2.2.windows-amd64.zip -O out.zip
PowerShell Expand-Archive -Path ".\\out.zip" -DestinationPath .

#Download plugins
.\grafana-5.2.2\bin\grafana-cli --pluginsDir .\grafana-5.2.2\data\plugins plugins install grafana-simple-json-datasource
.\grafana-5.2.2\bin\grafana-cli --pluginsDir .\grafana-5.2.2\data\plugins plugins install grafana-piechart-panel
git clone https://github.com/xcomponent/grafana-plugin-ac2 .\grafana-5.2.2\data\plugins\grafana-plugin-ac2