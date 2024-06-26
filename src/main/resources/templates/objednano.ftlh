[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="/images/favicon.png">
    <link rel="stylesheet" href="/css/style.css"/>
</head>
<body>
<main>
    <h1>Rekapitulace registrace</h1>
    <div><strong>Jméno:</strong> ${jmeno} ${prijmeni}</div>
    <div><strong>Datum narození:</strong> ${datumNarozeni?date}</div>
    <div><strong>Pohlaví:</strong> ${pohlavi}</div>
    <div><strong>Turnus:</strong> ${turnusKod}</div>
    [#if emailRodice??]
        <div><strong>Email rodiče:</strong> ${emailRodice}</div>
    [/#if]
    [#if telefonRodice??]
        <div><strong>Telefon rodiče:</strong> ${telefonRodice}</div>
    [/#if]
</main>
</body>
</html>
