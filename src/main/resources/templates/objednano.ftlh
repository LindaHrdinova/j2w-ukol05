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
    <div>Jméno: ${name} ${surname}</div>
    <div>Datum narození: ${birthday}</div>
    <div>Pohlaví: ${gender}</div>
    <div>Turnus: ${turnus}</div>
    [#if parentEmail ??]
        <div>Email rodiče: ${parentEmail}</div>
    [/#if]
    [#if parentPhone ??]
        <div>Telefon rodiče: ${parentPhone}</div>
    [/#if]
</main>
</body>
</html>
