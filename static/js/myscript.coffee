class MDDropboxClient

	constructor: (@dbClient) -> 
		@dbClient.authenticate (error, data) =>
      		return alert(error) if error
      		@dbClient.getAccountInfo (error, userInfo) =>
        		return alert(error) if error
        		alert(userInfo.name)
        		#$('#user-name', @$root).text userInfo.name

$ ->
  client = new Dropbox.Client key: '36vile8m8g7fpv4'
  window.app = new MDDropboxClient client
 