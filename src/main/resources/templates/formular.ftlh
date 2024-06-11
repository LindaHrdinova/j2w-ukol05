[#ftl]
[#import "/spring.ftl" as spring]
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
    <h1>Registrace na letní dětský tábor</h1>
    <form>
        <div class="row mb-3">
            <label for="jmeno" class="col-sm-2 col-form-label">Jméno *</label>
            <div class="col-sm-10">
                [@spring.formInput path="form.jmeno" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
        </div>


        <div class="row mb-3">
            <label for="prijmeni" class="col-sm-2 col-form-label">Příjmení *</label>
            <div class="col-sm-10">
                [@spring.formInput path="form.prijmeni" /]
                <div class="error">[@spring.showErrors "<br>"/]</div>
            </div>
        </div>


        <div class="row mb-3">
            <label for="datumNarozeni" class="col-sm-2 col-form-label">Datum narození *</label>
            <div class="col-sm-10">
                <input type="date" class="form-control" id="datumNarozeni">
            </div>
        </div>

        <fieldset class="row mb-3">
            <legend class="col-form-label col-sm-2 pt-0">Pohlaví *</legend>
            <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="pohlavi" id="pohlaviDevce"
                           value="pohlaviDevce"
                           checked>
                    <label class="form-check-label" for="pohlaviDevce">
                        Děvče
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="pohlavi" id="pohlaviChlapec" value="pohlaviChlapec">
                    <label class="form-check-label" for="pohlaviChlapec">
                        Chlapec
                    </label>
                </div>
            </div>
        </fieldset>
        [@spring.bind "form.pohlavi"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <fieldset class="row mb-3">
            <legend class="col-form-label col-sm-2 pt-0">Termín zájezdu *</legend>
            <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="turnusKod" id="turnusKod07_5-11"
                           value="turnus07_5-11"
                           checked>
                    <label class="form-check-label" for="turnusKod07_5-11">
                        5. - 11. července
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="turnusKod" id="turnusKod07_12-18"
                           value="turnus07_12-18">
                    <label class="form-check-label" for="turnusKod07_12-18">
                        12. - 18. července
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="turnusKod" id="turnusKod07_19-25"
                           value="turnus07_19-25">
                    <label class="form-check-label" for="turnusKod07_19-25">
                        19. - 25. července
                    </label>
                </div>
            </div>
        </fieldset>
        [@spring.bind "form.turnusKod"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="row mb-3">
            <label for="emailRodice" class="col-sm-2 col-form-label">E-mail rodiče</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="emailRodice">
            </div>
        </div>
        <div class="row mb-3">
            <label for="telefonRodice" class="col-sm-2 col-form-label">Telefon rodiče</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="telefonRodice">
            </div>
        </div>
        <p>* Položky označené hvězdičkou jsou povinné</p>
        <button type="submit" class="btn btn-primary">Objednat</button>
    </form>
</main>
</body>
</html>
