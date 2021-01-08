<!DOCTYPE html>
<html>
<head>
  <title>Refresh Instance</title>
</head>
<body>
<img src="../csp_logo.jpg"><br/>
<?php
require_once '/vendor/autoload.php';
use PhpAmqpLib\Connection\AMQPStreamConnection;
use PhpAmqpLib\Message\AMQPMessage;

if ($_POST["confirm"] != "") {
        $btn_disabled = true;
}
?>
<?php
if ($btn_disabled != true) { ?>

Are you sure you want to refresh this instance?  It will be unavailable while refreshing.
<br /><br />
Please type in the hostname of this instance to confirm you want to refresh.
<br /><br />

<form method = "POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
Confirmation: <input type="text" name="confirm" id="confirm" value="<?php echo $confirm;?>"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="checkbox" name="delvol" id="delvol" value="delvol">
<label for="delvol">Delete data volumes during refresh?</label>

<br /><br />
<button type = "submit" id = "btn-submit">Confirm</button>
</form>
<?php 
}

if ($_SERVER["REQUEST_METHOD"] === 'POST') {
  if (strcmp($_POST["confirm"], getenv("CSPHOSTNAME")) == 0) {
    echo "Your request to refresh this instance is confirmed.  <br/><br/>The refresh will start immediately (" . date("h:i:sa") . " GMT).";


    $connection = new AMQPStreamConnection('mq', 5672, 'guest', 'password');
    $channel = $connection->channel();

    $channel->queue_declare('refreshInstance', false, false, false, false);

    if (isset($_POST["delvol"])) {
     $msg = new AMQPMessage('REFRESH_THIS_INSTANCE_DELETE_DATA');
	} else {
	 $msg = new AMQPMessage('REFRESH_THIS_INSTANCE');	
	}
    $channel->basic_publish($msg, '', 'refreshInstance');

    $channel->close();
    $connection->close();

  } else {
    echo "Invalid confirmation.  Please re-try using your actual hostname.";
  }
}
?>

</body>
</html>