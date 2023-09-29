<?php

namespace App\Services;

use App\Repositories\Common\AuthRepository;
use App\Repositories\Common\RepositoryInterface;
use App\Repositories\Common\CommonRepository;
use App\Utils\Response;
use CodeIgniter\Validation\Exceptions\ValidationException;
use Exception;

class AuthService
{
    private $repository;
    function __construct(CommonRepository $repository)
    {
        $this->repository = $repository;
    }



    public function find($id)
    {
        return $this->repository->find($id);
    }


    public function list()
    {
        return $this->repository->list();
    }

    public function create($data)
    {
        return  $this->repository->insert($data);
        // try {
        //     $result = $this->repository->insert($data);
        //     return new Response(201, $result, false);
        // } catch (ValidationException $e) {
        //     return new Response(400, $e->getMessage(), false);
        // } catch (Exception $e) {
        //     return new Response(400, $e->getMessage(), false);
        // }
    }


    public function update($id, $data)
    {
        
        if (is_null($data) || count($data) === 0)
        {
            return [false, 'no body requset'];
        }

        try {
            return $this->repository->update($id, $data);
        } catch (Exception $e) {
            throw $e;
        }
    }


    public function getById($id)
    {
        return $this->repository->getById($id);
    }

    
    public function delete($id)
    {

        return $this->repository->delete($id);

    }

}

?>