<div>
	<form action="/asset/save" method="post">
        <label for="product_name">Item Category</label>
        <input type="text" name="itemCategory">
        <label for="product_price">Item Sub-Category</label>
        <input type="text" name="itemSubCategory"><br><br>
        <label for="quantity">Quantity</label>
        <input type="number" name="quantity">
        <label for="companyName">Company Name</label>
        <input type="text" name="companyName">
        <label for="uatDate">UAT Date</label>
        <input type="date" name="uatDate">
        <button type="submit">Add Item</button>
    </form>
 </div>
<div>


<br><br>
    <table>
        <thead>
            <tr>
                <th>Item Category</th>
                <th>Item Sub-Category</th>
                <th>Quantity</th>
                <th>Company Name</th>
                <th>UAT Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach($assets as $row):?>
            <tr>
                <td><?= $row['itemCategory'];?></td>
                <td><?= $row['itemSubCategory'];?></td>
                <td><?= $row['quantity'];?></td>
                <td><?= $row['companyName'];?></td>
                <td><?= $row['uatDate'];?></td>
                <td>
                    <a href="/asset/edit/<?= $row['assetID'];?>">Edit</a>
                    <a href="/asset/delete/<?= $row['assetID'];?>">Delete</a>
                </td>
            </tr>
        <?php endforeach;?>
		</tbody>
	</table>

