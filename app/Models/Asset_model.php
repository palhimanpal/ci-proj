<?php
namespace App\Models;
use CodeIgniter\Model;

class Asset_model extends Model
{
    protected $table = 'assets';

    public function getAsset($id = false){
		if($id === false){
			return $this->findAll();
		}else{
			return $this->getWhere(['assetID'=>$id]);
		}
	}

	public function saveAsset($data){
		$query = $this->db->table($this->table)->insert($data);
		return $query;
	}

	public function updateAsset($data, $id){
		$query = $this->db->table($this->table)->update($data, array('assetID' => $id));
		return $query;
	}

	public function deleteAsset($id){
		$query = $this->db->table($this->table)->delete(array('assetID'=> $id));
		return $query;
	}
}