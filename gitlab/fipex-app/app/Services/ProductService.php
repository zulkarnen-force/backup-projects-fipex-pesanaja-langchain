<?php

namespace App\Services;

use App\Models\ProductModel;
use App\Models\UserModel;
use App\Repositories\Common\RepositoryInterface;
use App\Utils\ErrorResponse;
use App\Utils\Response;
use App\Utils\SuccessResponse;
use CodeIgniter\Database\Exceptions\DataException;
use Exception;

class ProductService
{
    private $repository;
    function __construct(RepositoryInterface $repository)
    {
        $this->repository = $repository;
    }



    public function find($id)
    {
        return $this->repository->find($id);
    }


    public function list()
    {
        $products= $this->repository->list();
        return new Response(200, 'product data', true, $products);
    }

    public function create($data)
    {
        list ($ok, $result)  = $this->repository->insert($data);

        if (!$ok) 
        {
            return new Response(400, 'validation error', false, null, $result);
        }

        return new Response(201, "product created successfully", true);
    }


    public function update($id, $data)
    {
        try {
            $this->repository->getById($id);
        } catch (Exception $e) {
            return new Response(400, $e->getMessage(), false);
        }

        try {
            $result = $this->repository->update($id, $data);
            return new Response(201, 'product updated successfully', true);
        } catch (DataException $e) {
            return new Response(400, $e->getMessage(), false);
        } catch (Exception $e) {
            return new Response(400, $e->getMessage(), false);
        }

    }


    public function delete($id)
    {

        try {
            $this->repository->getById($id);
        } catch (Exception $e) {
            return new Response(400, $e->getMessage(), false);
        }

        $this->repository->delete($id);

        return new Response(200, 'product  deleted successfully', true);

    }

    public function getById($id)
    {
        try {
            $result = $this->repository->getById($id);
            return new Response(200, 'user data', true, $result);
        } catch (Exception $e) {
            return new Response(400, $e->getMessage(), false);
        }
    }

    public function getAuthorByProductId($id)
    {
        try {
            $product = $this->repository->getById($id);
            $author_id = $product['author_id'];
            $userModel = new UserModel();
            $author = $userModel->find($author_id);
            unset($author['password']);

            return new Response(200, 'user author from product ' . $product['name'], true, $author);
        } catch (Exception $e) {
            return new Response(400, $e->getMessage(), false);
        }
    }
}

?>