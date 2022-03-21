<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
</head>
<body>
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
<div>
	<p>
	To add new item in the Item list, press the button below.
	<a href="/asset/add_new">Add New Iitem</a>
	</p>
</div>
</body>
</html>
