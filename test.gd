extends HTTPRequest
#
# HTTPClient demo
# This simple class can do HTTP requests, it will not block but it needs to be polled

#
func _init():
	
	var err =0
	var http = HTTPClient.new()

	var headers=[
        "User-Agent: Pirulo/1.0 (Godot)",
        "Accept: */*"
 	]
	
	# Create the Client
	var err = http.connect("localhost",800) # Connect to host/port
	assert(err==OK)
#	# Wait until resolved and connected
#	while(http.get_status()== 3 or http.get_status()== 1):
#		http.poll()
#		print("Connecting..")
#		OS.delay_msec(500)
#	assert( http.get_status() == HTTPClient.STATUS_CONNECTED ) # Could not connect
	pass
#	
#   
#
#func _on_Button_pressed():
#	var text = get_node("TextEdit").get_text()
#	var text2 = get_node("TextEdit 2").get_text()
#	err = http.request(HTTPClient.METHOD_GET,"/test/test.php?username="+text+"&email="+text2+"",headers) # Request a page from the site (this one was chunked..)
#	#assert( err == OK ) # Make sure all is OK
#
#	while (http.get_status() == HTTPClient.STATUS_REQUESTING):
#        # Keep polling until the request is going on
#		http.poll()
#		print("Requesting..")
#		OS.delay_msec(500)
#	pass

#	assert( http.get_status() == HTTPClient.STATUS_BODY or http.get_status() == HTTPClient.STATUS_CONNECTED ) # Make sure request finished well.

#print("response? ",http.has_response()) # Site might not have a response.
#
