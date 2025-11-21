<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $password = $_POST["password"];
    $hash = password_hash($password, PASSWORD_ARGON2ID);


    echo "<p>Hashed password:</p>";
    echo "<textarea rows='4' cols='70'>$hash</textarea>";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>create password helper</title>
</head>
<body>
    <h1>create password data</h1>
    <form method="post" action="">
        <label for="password">Enter Password:</label>
        <input type="password" id="password" name="password" required>
        <button type="submit">Submit</button>
    </form>
    
</body>
</html>
