<?php

namespace App\Services;

class WhatsappService
{
    private $TOKEN;
    private $VERSION = "v22.0";
    private $PHONE_NUMBER_ID = "136302776242131";
    private $BUSINESS_ACCOUNT = "122387020968327";

    function __construct()
    {
        $this->TOKEN = env('WHATSAPP_ACCESS_TOKEN');
    }


    function sendMessageText($to, $text)
    {

        $url = 'https://graph.facebook.com/' . $this->VERSION . '/' . $this->PHONE_NUMBER_ID . '/messages';
        $data = [
            "messaging_product" => "whatsapp",
            "recipient_type" => "individual",
            'to' => $to,
            'type' => 'text',
            'text' => [
                'body' => $text
            ]
        ];
        // $data = [
            // "messaging_product" => "whatsapp",
            // "recipient_type" => "individual",
        //     "to" => $to,
        //     "type" => "text",
        //     "text" => [
        //         "preview_url" => false,
        //         "body" => $text
        //     ]
        // ];

        $curl = curl_init($url);
        // curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_POST, true);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

        $headers = [
            'Authorization: Bearer ' . $this->TOKEN,
            'Content-Type: application/json'
        ];
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));

        $resp = curl_exec($curl);
        $httpCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);

        Logger("WhatsApp Response: " . $resp);

        if ($resp === false) {
            curl_close($curl);
            return false;
        } else {
            if ($httpCode == 200) {
                curl_close($curl);
                return true;
            } else {
                curl_close($curl);
                return false;
            }
        }
        // return json_decode($resp);
    }


}