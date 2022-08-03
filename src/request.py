import requests

def get():
	r = requests.get('http://localhost:16001/api')
	print(r.json())

def post():
	data = {"data": "New saved data!"}
	r = requests.post('http://localhost:16001/api', data=data)
	# print(r)  # status: 200  <-- this means ok!

get()  # prints the default response
post()  # updates the response
get()  # prints the updated response