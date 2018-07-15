var mysql = require('mysql');
var inquirer = require('inquirer');

var connection = mysql.createConnection({
    host: "localhost",
    port: 4500,
    user: "root",
    password: "root",
    database: "bamazon"
})

connection.connect(function(err) {
    if (err) throw err;
    see();
})

var see = function() {
  var query = 'SELECT * FROM buy'
  connection.query(query, function(err, res) {
      for (var i = 0; i < res.length; i++) {
          console.log("Item ID: " + res[i].itemID + " || Product: " + res[i].productName + " || Department: " + res[i].productDepartment + " || Price: " + res[i].price + " || Stock: " + res[i].stockQuantity);
      }
      purchase();
    })
};

var purchase = function() {
    inquirer.prompt([{
        name: "ProductID",
        type: "input",
        message: "ID of the product you would like to buy?",
   
        validate: function(value) {
            if (isNaN(value) == false) {
                return true;
            } else {
                return false;
            }
        }
    }, {
        name: "Quantity",
        type: "input",
        message: "How many?",
        validate: function(value) {
            if (isNaN(value) == false) {
                return true;
            } else {
                return false;
            }
        }
    }]).then(function(answer) {

      
        var query = 'SELECT * FROM buy WHERE itemID=' + answer.Quantity;
        connection.query(query, function(err, res) {
          if (answer.Quantity <= res) {
            for (var i = 0; i < res.length; i++) {
                console.log("Stock " + res[i].stockQuantity + " " + res[i].productName + ".");
                console.log("Thank you for choosing Bamazon! "+ res[i].stockQuantity + " " + res[i].productName + " here is your product");
              }
            } else {
              console.log("Not enough product.  Try Amazon");
            }
            see();
        })
    })
};
