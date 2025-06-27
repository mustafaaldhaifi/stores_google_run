<?php

// Optional: secret you set in GitHub webhook config
$secret = 'musjhd8867#4';

// Read the payload from GitHub
$payload = file_get_contents('php://input');
$signature = $_SERVER['HTTP_X_HUB_SIGNATURE_256'] ?? '';

// Verify the signature
$hash = 'sha256=' . hash_hmac('sha256', $payload, $secret, false);

if (!hash_equals($hash, $signature)) {
    http_response_code(403);
    exit('Invalid signature');
}


// Run git pull
$output = shell_exec('cd /var/www/project && git pull 2>&1');

// file_put_contents('webhook.log', $output . "\n", FILE_APPEND);

echo "Webhook processed.";
