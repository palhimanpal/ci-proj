<?php
namespace App\Controllers;
use CodeIgniter\Controller;

class Hello extends Controller
{
	public function index()
	{
		$data['title'] = "First Time with Codeigniter4";
		echo view("hello_view", $data);
	}
}

