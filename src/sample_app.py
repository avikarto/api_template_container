import time
import falcon

my_value = 'Hi!'

class SampleAPI:
    """ Simple API endpoint which reports/updates an updatable value """

    def on_get(self, req, resp):
        """ get-event handler (curl -X GET)
        -----
        req: the request
        resp: the response
        """
        global my_value
        resp.media = my_value

    def on_post(self, req, resp):
        """ post-event handler (curl -X POST)
        -----
        req: the request, -H "Content-Type: application/json" -d '{"data":"test"}'
        resp: the response
        """
        global my_value
        my_value = req.media['data']

# Web Server Gateway Interface
wsgi_api = falcon.App()
wsgi_api.add_route('/api', SampleAPI())