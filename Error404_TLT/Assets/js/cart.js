$('.plus').click(function () {
    var product = $(this).closest('.product')
    var q = product.data('quantity') + 1;
    product.data('quantity', q);
    updateProduct(product);
});

$('.minus').click(function () {
    var product = $(this).closest('.product')
    var q = Math.max(1, product.data('quantity') - 1);
    product.data('quantity', q);
    updateProduct(product);
});

$('.del').click(function () {
    var product = $(this).closest('.product')
    product.hide('blind', { direction: 'left' }, 500, function () {
        product.remove();
        updateProduct(product);
        if ($('.product').length == 0) {
            $('.cart-container .cart').hide();
            $('.cart-container .empty').show();
        }
    });
});

function updateProduct(product) {
    var quantity = product.data('quantity');
    var price = product.data('price');
    $('.product-quantity', product).text('x' + quantity);
    $('.product-price', product).text('$ ' + (price * quantity).toFixed(2));
    updateBill();
}

function updateBill() {
    var subtotal = 0;
    var salestax = 0;
    var shipping = 5;
    var total = 0;
    $('.product').each(function () {
        subtotal += $(this).data('quantity') * $(this).data('price');
    });
    salestax = subtotal * 0.05;
    total = subtotal + salestax + shipping;
    $('.subtotal .value').text('$ ' + subtotal.toFixed(2));
    $('.salestax .value').text('$ ' + salestax.toFixed(2));
    $('.total .value').text('$ ' + total.toFixed(2));
}
