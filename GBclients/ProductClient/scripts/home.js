$(document).ready(function () {
    
    var product = {};
    var uid = 1; //seller Id
    var cid = 1; // customer Id

    getAllProducts(uid, cid);
    
});


function getAllProducts(uid, cid) {
    
    $.ajax({
        url: "http://localhost:8080/gaget/api/products/"+uid,
        method: "GET",
        dataType: "json",
        success: function (data) {
            var cardList = $('#cardListBody');
            cardList.empty();
            $(data).each(function (index, element) {

                cardList.append('<div class="col"><div class="card h-110 text-center shadow"><img src="' + element.image +
                '" width="170" height="185" class="card-img-top"><div class="card-body"><h5 class="card-title">'+ element.productName +
                '</h5><p class="card-text text-danger"><input type="hidden" id="txtProductPrice" value="'+ element.productPrice +'">Rs: '+ element.productPrice +
                '.00</p><input type="hidden" id="txtNumOfItem" style="width: 40px;" value="1"><input type="hidden" id="txtProductId" value="'+element.productId+
                '"><br><input type="hidden" id="txtCustomerId" value="'+cid+'"><button type="button" class="btn btn-dark btn-sm mt-2" onclick="addToCart('+ cid+','+element.productId+',\''+element.productPrice+'\')"> Add to Cart</button></div></div></div>');
                
            });
        },
        error: function (error) {
            alert(error);
        }
    })
}
