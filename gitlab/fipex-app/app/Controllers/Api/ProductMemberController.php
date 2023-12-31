<?php
 
namespace App\Controllers\Api;
 
use App\Repositories\Common\CommonRepository;
use CodeIgniter\RESTful\ResourceController;
use App\Models\GuestBook;
use App\Models\ProductMember;
use App\Services\ProductMemberService;

class ProductMemberController extends ResourceController
{
    public $db;
    public $service;
    public function __construct() {
        $this->db = \Config\Database::connect();
        $this->service = new ProductMemberService(new CommonRepository(new ProductMember()));
    }
    public function index()
    {
        $products = $this->service->list();
        return $this->respond($products->getResponse(), $products->getCode());
    }
 
    
    public function create()
    {
        $requestJson = $this->request->getJson(true);
        $requestJson['id'] = bin2hex(random_bytes(10));

        $response = $this->service->create($requestJson);
 
        return $this->respond($response->getResponse(), $response->getCode());

    }
    

    public function show($id = null)
    {
        $response = $this->service->getById($id);
        return $this->respond($response->getResponse(), $response->getCode());

    }
    // update
    public function update($id = null)
    {
        $requset = $this->request->getJson(true);

        $response = $this->service->update($id, $requset);

        return $this->respond($response->getResponse(), $response->getCode());

    }


    public function destroy($id = null)
    {
        $response = $this->service->delete($id);

        return $this->respond($response->getResponse(), $response->getCode());
    }

}