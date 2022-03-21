<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Edit Product</title>
</head>
<body>
    
    <form action="/asset/update" method="post">
        <label for="product_name">Item Category</label>
        <input type="text" name="itemCategory" value="<?= $assets->itemCategory;?>">
        <label for="product_price">Item Sub-Category</label>
        <input type="text" name="itemSubCategory" value="<?= $assets->itemSubCategory;?>"><br><br>
        <label for="quantity">Quantity</label>
        <input type="number" name="quantity" value="<?= $assets->quantity;?>">
        <label for="companyName">Company Name</label>
        <input type="text" name="companyName" value="<?= $assets->companyName;?>">
        <label for="uatDate">UAT Date</label>
        <input type="date" name="uatDate" value="<?= $assets->uatDate;?>">
        <input type="hidden" name="product_id" value="<?= $assets->assetID;?>">
        <button type="submit">Update Item</button>
    </form>
</body>
</html>
