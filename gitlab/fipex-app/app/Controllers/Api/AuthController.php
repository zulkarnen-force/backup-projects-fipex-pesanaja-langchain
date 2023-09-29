<?php
 
namespace App\Controllers\Api;



use App\Models\User;
use App\Repositories\Common\AuthRepository;
use App\Repositories\Common\CommonRepository;
use App\Services\AuthService;
use CodeIgniter\RESTful\ResourceController;
use Exception;

class AuthController extends ResourceController
{
    // use ResponseTrait;
    public $db;
    public $service;
    public function __construct() {
        $this->db = \Config\Database::connect();
        $this->service = new AuthService(new CommonRepository(new User()));
    }

    public function register()
    {
        $rules = [
            'name' => 'required',
            'email' => 'required|min_length[6]|max_length[50]|valid_email|is_unique[users.email]',
            'password' => 'required|min_length[8]|max_length[255]'
        ];

        $requset = $this->request->getJSON(true);

        list($ok, $errorMessage) = $this->service->create($requset);

        if (!$ok) 
        {
            return $this->fail($errorMessage);
        }

        helper('jwt');

        $token = getSignedJWTForUser($requset['email']);

        return $this->respondCreated([
            "message" => "user created successfully",
            "token" => $token
        ]);
        
        
    }

    public function login()
    {
        $validation = \Config\Services::validation();

        $validation->setRules([
            'email' => 'required',
            'password' => 'required|min_length[10]',
        ]);

        
        $request = $this->request->getJSON(true);
        
        $validation->withRequest($this->request)->run();

        if (!empty($validation->getErrors())) {     
                return $this->fail(
                    $validation->getErrors()
            );
        }


        $plainPassword = $request['password'];

        $model = new User();

        $user = $model->where(['email' => $request['email']])->first();
        $hashPassword = $user['password'];

        if (!password_verify($plainPassword, $hashPassword))
        {
            return $this->failForbidden(
                'wrong password'
            );
        }


        
        helper('jwt');

        $token = getSignedJWTForUser($request['email']);

        return $this->respond([
            "token" => $token
        ]);

    }



    public function me() 
    {
        helper('jwt');
        
    }


}