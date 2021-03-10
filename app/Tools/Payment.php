<?php
namespace App\Tools;

use App\Models\Order;

class Payment{

    public function run(Order $order)
    {
        return $this->getInstance($order->pay_type->title)->run($order);
    }

    protected function getInstance($name)
    {
        $className = "\\App\\Tools\\" . ucfirst($name) . "Pay";

        if (!class_exists($className)) {
            throw new \Exception("payment not null");
        }

        return new $className();
    }
}
