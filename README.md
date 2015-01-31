# Northwind Mini API

## Installation and Setup
To setup this API, first install `Ruby`, `Rails`, and `PostgreSQL`.

To create the database for the API, run `rake db:setup` in this project’s directory. This will create a database with a single table `orders` already containing pre-defined entries.

When making requests to this API, make sure that your Rails server is running!
To do this, run `rails server` in this project’s directory. 
`api.localhost:3000` (or `api.yourlocalservername:3000`) should now be listening for requests.


## Instructions
Create a program that will make requests to this RESTful API.

__It does not have to be a web application, nor does it need to have any GUI.__

Use Python for this activity. You may also want to use an HTTP library for Python called Requests. http://docs.python-requests.org/en/latest/ This will definitely make it easier to make requests.


In this exercise, you have to make HTTP requests to this `orders` API.

To see the list of endpoints, run `rake routes` in this project's directory.

1.   `GET` all `orders`.

	_Print only the `ShipCountry` for each `order`._

2.   `GET` the `order` with `order_id = 11022`

	_Print only the `ShipAddress` for that `order`._

3.   `POST` a new `order`. Use the following parameters:
	- order_id = 11078
	- customer_id = ’EDGAR', 
	- employee_id = 2012, 
	- order_date = ’2015-02-14', 
	- required_date = ’2017-02-14', 
	- shipped_date = ’2016-02-14'
	- ship_via = 1,
	- freight = 1.0,
	- ship_name = ‘ShipName',
	- ship_address = ’U.P. Diliman’, 
	- ship_city = ’Quezon City', 
	- ship_region = ’ABC', 
	- postal_code = ’1234', 
	- ship_country = ’Philippines’

	_No output. `GET` the `order` with `order id=110778` to see if your entry was added._
	_Note that you cannot run this `POST` request again with the same `order id`._

4.   `DELETE` the `order` with `order_id = 11025`.

	_No output. `GET` all `orders` again to see if your entry was removed._


## Submission
- Save your answers to a file. 
- Zip this file along with your source code. Name this archive _[surname].zip_.
- Email this with the title _[surname] Submission_ to _jdagarcia94@gmail.com_. 


## Some things to take note of:
* The API only responds to requests for XML or JSON. Thus, do not forget to append this to the URL when making a call. 
* While it can also return XML, it is highly recommended that you always ask for JSON.
* You may need to send ```headers = {'content-type': ‘application/json'}``` along with your requests.
* You do not have to set this API up if you think it will take up too much time to install. All you need is to submit your working Python program and the output text file. 
* This is not a group activity.
* If you have any concerns, approach any TeamTationer.
