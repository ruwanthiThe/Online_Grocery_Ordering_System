<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="shoppingcart.css">
</head>
<body>
    <div class="cart-container">
        <h1>Shopping Cart</h1>
        <table>
            <thead>
                <tr>
                    <th>Item</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Apples</td>
                    <td><input type="number" value="1" min="1"></td>
                    <td>$1.00</td>
                    <td>$1.00</td>
                </tr>
                <tr>
                    <td>Bananas</td>
                    <td><input type="number" value="2" min="1"></td>
                    <td>$0.50</td>
                    <td>$1.00</td>
                </tr>
                <tr>
                    <td>Carrots</td>
                    <td><input type="number" value="1" min="1"></td>
                    <td>$0.30</td>
                    <td>$0.30</td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="3">Total</td>
                    <td>$2.30</td>
                </tr>
            </tfoot>
        </table>
        <button class="checkout-button">Checkout</button>
    </div>
</body>
</html>
