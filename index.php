<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <title>Tražilica korisnika</title>
</head>
<body>
    <div class="container">
        <h2>Tražilica</h2>
        <form method="post">
            <label for="search_term">Unesite ime ili prezime:</label>
            <input type="text" id="search_term" name="search_term" required>
            <button type="submit">Pretraži</button>
        </form>

        <?php
        $MySQL = mysqli_connect("localhost", "root", "", "vjezba15");

        if ($_SERVER["REQUEST_METHOD"] == "POST") {
        
            $searchTerm = mysqli_real_escape_string($MySQL, $_POST['search_term']);
            $query = "SELECT * FROM users WHERE firstname LIKE '%$searchTerm%' OR lastname LIKE '%$searchTerm%'";
            $result = mysqli_query($MySQL, $query);

            if (mysqli_num_rows($result) > 0) {
                echo "<h3>Rezultati pretrage:</h3>";
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<p>" . htmlspecialchars($row['firstname']) . " " . htmlspecialchars($row['lastname']) . "</p>";
                }
            } else {
                echo "<p>Nema korisnika s tim imenom ili prezimenom!</p>";
            }

            mysqli_free_result($result);
        }

        mysqli_close($MySQL);
        ?>
    </div>

    <!-- vjezba 15 - Tražilica korisnika -->

</body>
</html>
