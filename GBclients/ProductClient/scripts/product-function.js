$(document).ready(function () {
    
    var product = {};
    var uid = 1; //seller Id

    getAllProducts(uid);
    
});


function getAllProducts(id) {
    $.ajax({
        url: "http://localhost:8080/gaget/api/products/"+id,
        method: "GET",
        dataType: "json",
        success: function (data) {
            var tableBody = $('#tblProduct tbody');
            tableBody.empty();
            $(data).each(function (index, element) {
                tableBody.append('<tr> <td>' + element.productId + 
                '</td><td>' + element.productName +
                '</td><td>' + element.productType + 
                    '</td><td>' + element.productPrice + 
                    '</td><td><img src="' + element.image +'" width="70" height="65"></td><td>' + element.description +
                    '</td><td hidden>'+element.sellerId+
                    '</td><td><button type="button" class="btn btn-warning btn-sm" onclick="updateProduct('+ element.sellerId+','+element.productId+',\''+element.productName+'\',\''+element.productPrice+'\',\''+element.description+'\')"> Update</button> | <button type="button" class="btn btn-danger btn-sm" onclick="deleteProduct('+ element.productId + 
                    ')"> Delete </button></td> </tr>')
            });
        },
        error: function (error) {
            alert(error);
        }
    })
}

//get userId from login
function catchUserId(){

}
//get id value to popup modal
function deleteProduct(pid) {
    //var product = {};
    //$('#txtProductIdD').val(data);
    //console.log("sid ---",sid);
    //console.log("pid ---",pid);

    //$('#txtSellerIdD').val(sid);
    $('#txtProductIdD').val(pid);

    $('#productDeleteModal').modal('show');
}

//trigger delete product(update button of Update modal)
function makeDELETEproductOnProduct() {
    //var sellerId = $('#txtSellerIdD').val();
    var productId = $('#txtProductIdD').val();
  
    $.ajax({
        url: 'http://localhost:8080/gaget/api/products/'+ productId,
        method: 'DELETE',
        success: function () {
            alert('record ' + productId + ' has been deleted');
            location.reload();
        },
        error: function (error) {
            alert(error);
        }
    });
    $('#productDeleteModal').modal('hide');
}

//get values to update pop up modal
function updateProduct(sid,pid,proName,proPrice,proDes) {
    //var product = {};

    $('#txtProductNameU').val(proName);
    $('#txtProductPriceU').val(proPrice);
    $('#txtSellerIdU').val(sid);
    $('#txtProductIdU').val(pid);
    $('#txtProductDescriptionU').val(proDes);

    $('#productUpdateModal').modal('show');
    
}

//trigger update product
function makePUTproductOnProduct(){
    var product = {};

    product.sellerId = $('#txtSellerIdU').val();
    product.productId = $('#txtProductIdU').val();
    product.productName = $('#txtProductNameU').val();
    product.productPrice = $('#txtProductPriceU').val();
    product.description = $('#txtProductDescriptionU').val();
    //product.userId = $('#txtUserIdU').val();

    var productObj = JSON.stringify(product);

    $.ajax({
    url: 'http://localhost:8080/gaget/api/products/',
    type: 'PUT',
    data: productObj,
    contentType: 'application/json; charset=utf-8',
    success: function (result) {
        alert('record  has been updated');
        location.reload();
    }
});
$('#productUpdateModal').modal('hide');
}

function reset() {
    $('#txtCompanyName').val('');
    $('#txtContact').val('');
    $('#txtUsername').val('');
    //$('#txtId').val('');
}
        
