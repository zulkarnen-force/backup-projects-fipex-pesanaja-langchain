<?php

namespace App\Utils;

use CodeIgniter\HTTP\Message;

class Response {
    private $code;
    private $message;
    private $success;
    private $data;
    private $error;

	public function __construct(int $code, $message, $success, $data = null, $error = null){
        $this->code = $code;
        $this->message = $message;
        $this->success = $success;
        $this->data = $data;
        $this->error = $error;
    }

	/**
	 * @return string
	 */
	public function getMessage(): string {
		return $this->message;
	}

	/**
	 * @return int
	 */
	public function getCode(): int {
		return $this->code;
	}


	public function getResponse() {
		$response =  [
			'success' => $this->success,
			'message' => $this->message,
		];

		if (!is_null($this->data)) {
			$response['data'] = $this->data;
		}

		if (!is_null($this->error)) {
			$response['error'] = $this->error;
		}

		return $response;
	}


}