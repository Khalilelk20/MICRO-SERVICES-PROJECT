<?php
session_start();

// Détruire complètement la session
session_destroy();
$publicIP = getenv('PUBLIC_IP');
// Rediriger vers une autre page après la déconnexion
header("Location: http://$publicIP/");
exit();
?>
