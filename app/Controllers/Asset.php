<?php
namespace App\Controllers;
use CodeIgniter\Controller;

use App\Models\Asset_model;

class Asset extends Controller
{
    public function index()
    {
		$session = session();
        $model = new Asset_model();
		$data['assets'] = $model->getAsset();
		echo view("asset/add_asset_list", $data);
    }

    public function add_new(){
		echo view("asset/add_asset_list");
	}

	public function save(){
		$model = new Asset_model();
		$data = array(
			"itemCategory" => $this->request->getPost("itemCategory"),
			"itemSubCategory"=> $this->request->getPost("itemSubCategory"),
            "quantity"=> $this->request->getPost("quantity"),
            "companyName"=> $this->request->getPost("companyName"),
            "uatDate"=> $this->request->getPost("uatDate"),
		);

		$model->saveAsset($data);
		return redirect()->to("/asset");
	}

	public function edit($id){
		$model = new Asset_model();
		$data['assets'] = $model->getAsset($id)->getRow();
		echo view("asset/edit_asset_view", $data);
	}

	public function update(){
		$model = new Asset_model();
		$id = $this->request->getPost('assetID');
		$data = array(
			"itemCategory" => $this->request->getPost("itemCategory"),
			"itemSubCategory" => $this->request->getPost("itemSubCategory"),
            "quantity" => $this->request->getPost("quantity"),
            "companyName" => $this->request->getPost("companyName"),
            "uatDate" => $this->request->getPost("uatDate"),            
		);

		$model->updateAsset($data, $id);
		return redirect()->to("/asset");
	}

	public function delete($id){
		$model = new Asset_model();
		$model->deleteAsset($id);
		return redirect()->to("/asset");
	}
}
