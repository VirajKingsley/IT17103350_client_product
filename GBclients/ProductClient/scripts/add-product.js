$(document).ready(function () {
    var seller_id = 1;
    var product = {};

    //getAllproducts();

    
    $('#btnModelAddProduct').click(function () {

        product.productName = $('#txtProductName').val();
        product.productType = $('#txtProductType').val();
        product.productPrice = $('#txtProductPrice').val();
        product.image = $('#txtProductImage').val();
        product.relatedField = $('#txtRelatedField').val();
        product.description = $('#txtDescription').val();
        product.sellerId = $('#txtSellerId').val();
        
        var productObj = JSON.stringify(product);
        $.ajax({
            url: "http://localhost:8080/gaget/api/products",
            method: "POST",
            data: productObj,
            contentType: 'application/json; charset=utf-8',
            success: function () {
                
                alert('Saved successfully');
                //location.replace("product-list.html");
                $('#productAddModal').modal('hide');               
            },
            error: function (error) {
                alert('error', error);
            }
        })
    })
});

