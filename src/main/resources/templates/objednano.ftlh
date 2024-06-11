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
    <div>Jméno: ${jmeno} ${prijmeni}</div>
    <div>Datum narození: ${datumNarozeni}</div>
    <div>Pohlaví: ${pohlavi}</div>
    <div>Turnus: ${turnusKod}</div>
    [#if parentEmail ??]
        <div>Email rodiče: ${emailRodice}</div>
    [/#if]
    [#if parentPhone ??]
        <div>Telefon rodiče: ${telefonRodice}</div>
    [/#if]
</main>
</body>
</html>
