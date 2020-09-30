<?php 
$name = $_POST["name"];
$email = $_POST["email"];
$price = $_POST["amount"];
$phone = $_POST["phone"];


include 'src/instamojo.php';

$api = new Instamojo\Instamojo(Private API Key, Private Auth Token,'https://test.instamojo.com/api/1.1/');


try {
    $response = $api->paymentRequestCreate(array(
        "purpose" => "Donation to Point .Pay",
        "amount" => $price,
        "buyer_name" => $name,
        "phone" => $phone,
        "send_email" => true,
        "send_sms" => true,
        "email" => $email,
        'allow_repeated_payments' => true,
        "redirect_url" => "https://tsf-payment-gateway-intergration.000webhostapp.com/thankyou.php",
        "webhook" => "https://tsf-payment-gateway-intergration.000webhostapp.com/webhook.php"
        ));
    //print_r($response);

    $pay_ulr = $response['longurl'];
    
    //Redirect($response['longurl'],302); //Go to Payment page

    header("Location: $pay_ulr");
    exit();

}
catch (Exception $e) {
    print('Error: ' . $e->getMessage());
}     
  ?>