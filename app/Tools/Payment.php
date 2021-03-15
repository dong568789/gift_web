<?php
namespace App\Tools;

use App\Models\Order;

class Payment{

    public function run(Order $order)
    {
        return $this->getInstance($order->pay_type->name)->pay($order);
    }

    protected function getInstance($name)
    {
        $className = "\\App\\Tools\\Payment\\" . ucfirst($name) . "Pay";

        if (!class_exists($className)) {
            throw new \Exception("payment not null");
        }

        return new $className();
    }
}
