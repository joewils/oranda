![Oranda Screenshot](http://joecode.com/images/oranda.png)

Oranda is a simple web application for converting HTML pages to PDF.  It provides a basic web interface and a JSON API.

## Requirements:

* [Sinatra](http://www.sinatrarb.com)
* [WKHTMLTOpdf](http://wkhtmltopdf.org)

## Usage:

`curl
curl -F 'url=http://www.joecode.com' http://localhost:4567/pdf
`

## Results:

`json
{"status":"success", "pdf":"/pdf/71fc24f5-6e0b-4983-bd86-269d78fbdb72.pdf"}
`

## Heroku Cedar:

[WKHTMLTOpdf Heroku Buildpack](https://github.com/dscout/wkhtmltopdf-buildpack)

## Example:

[http://pdf.joecode.com](http://pdf.joecode.com)
