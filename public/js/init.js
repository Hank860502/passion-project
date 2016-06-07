$(document).ready(function() {
Materialize.updateTextFields();
$('select').material_select();
$('input#input_text, textarea#textarea1').characterCounter();
  var moltin = new Moltin({publicId: 'NGtMpNEgNZhfU9MHjFAfDja1CkkhoiRvkg6JUkCS3A'});
  moltin.Authenticate(function() {


$(".add_to_wishlist").on("click", function(e) {
  e.preventDefault()
 item_id = $(this).attr("id")
 item_name = $(this).attr("data")
 console.log(item_name)
// var promise = new Promise(function(fulfill, reject) {
  var product = moltin.Product.Find({slug: item_name});
  console.log(product[0].id)
// }
  // promise.then(function(fulfill) {

  // })
  // var cart = moltin.Cart.Contents();
  var item = moltin.Cart.Insert(product[0].id, 1, null);
    console.log(item)
  // console.log(cart)
})
});

  //   $(".products").html(product[0].description)
  //   console.log(product)
  });



$('.container').html("hello")











    // for (var i = products.length - 1; i >= 0; i--) {
    //   var product = products[i];
    //   var div = document.createElement("div");
    //   var desc = document.createElement("p");
    //   desc.innerHTML = product.description;
    //   div.appendChild(desc);
    //   $('.products').append(div);
    // }
