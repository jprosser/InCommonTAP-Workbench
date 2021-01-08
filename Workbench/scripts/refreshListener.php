<?php
require_once '/vendor/autoload.php';
use PhpAmqpLib\Connection\AMQPStreamConnection;

$connection = new AMQPStreamConnection('mq', 5672, 'guest', 'password');
$channel = $connection->channel();

$channel->queue_declare('refreshInstance', false, false, false, false);

echo " [*] Waiting for messages. To exit press CTRL+C\n";

$callback = function ($msg) {
    echo ' [x] Received ', $msg->body, "\n";
    if ($msg->body == "REFRESH_THIS_INSTANCE") {
        echo "Received REFRESH message!\n";
		shell_exec( "/csp-tap/InCommonTAP-Examples/Workbench/scripts/refresh-this-instance.sh" );
	}
};

$channel->basic_consume('refreshInstance', '', false, true, false, false, $callback);

while ($channel->is_consuming()) {
    $channel->wait();
}

$channel->close();
$connection->close();
?>