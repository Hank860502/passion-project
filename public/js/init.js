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
  var item = moltin.Cart.Insert(product[0].id, 1, null);
  console.log(item)
  var cart = moltin.Cart.Contents();
  console.log(cart)
  $("wishlist").append(cart)
})
  });

  $("#map").on("click", function(e) {
    e.preventDefault()
    console.log("box")
    $(".tour").append("<div id='googleMap' style='width:500px;height:380px;'></div>")
  })
  eventListeners();
  // searchBar();
  //   $(".products").html(product[0].description)
  //   console.log(product)
});

var eventListeners = function(){
  $("#button").on("click", searchBar);
  $("#navsearch").on("click", searchBar);
  $("#exit").on("click", hidesearchBar)
  $(".fa-3x").hover(bigIcon, smallIcon)

}

function searchBar(e){
  e.preventDefault();
  $("#searchform").show();
  $("#button").hide();
  $("#taiwan").hide();
  $("#uk").hide();
}

function hidesearchBar(e) {
  e.preventDefault();
  $("#searchform").hide();
  $("#button").show();
  $("#taiwan").show();
  $("#uk").show();
}

function bigIcon(){
  $(this).removeClass("fa-3x");
  $(this).addClass("fa-4x");
}
function smallIcon(){
  $(this).removeClass("fa-4x")
  $(this).addClass("fa-3x")
};


    // for (var i = products.length - 1; i >= 0; i--) {
    //   var product = products[i];
    //   var div = document.createElement("div");
    //   var desc = document.createElement("p");
    //   desc.innerHTML = product.description;
    //   div.appendChild(desc);
    //   $('.products').append(div);
    // }
