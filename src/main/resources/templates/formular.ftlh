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
    <h1>Registrace na letní dětský tábor</h1>
    <form>
        <div class="row mb-3">
            <label for="inputName" class="col-sm-2 col-form-label">Jméno *</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputName">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputSurname" class="col-sm-2 col-form-label">Příjmení *</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="inputSurname">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputBirtday" class="col-sm-2 col-form-label">Datum narození *</label>
            <div class="col-sm-10">
                <input type="date" class="form-control" id="inputBirtday">
            </div>
        </div>
        <fieldset class="row mb-3">
            <legend class="col-form-label col-sm-2 pt-0">Pohlaví *</legend>
            <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gridRadiosGender" id="gridGernedGirl"
                           value="genderGirl"
                           checked>
                    <label class="form-check-label" for="gridGernedGirl">
                        Děvče
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gridRadiosGender" id="gridGernedBoy" value="genderBoy">
                    <label class="form-check-label" for="gridGernedBoy">
                        Chlapec
                    </label>
                </div>
            </div>
        </fieldset>
        <fieldset class="row mb-3">
            <legend class="col-form-label col-sm-2 pt-0">Termín zájezdu *</legend>
            <div class="col-sm-10">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gridRadiosTurnus" id="gridTurnus07_5-11"
                           value="turnus07_5-11"
                           checked>
                    <label class="form-check-label" for="gridTurnus07_5-11">
                        5. - 11. července
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gridRadiosTurnus" id="gridTurnus07_12-18"
                           value="turnus07_12-18">
                    <label class="form-check-label" for="gridTurnus07_12-18">
                        12. - 18. července
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gridRadiosTurnus" id="gridTurnus07_19-25"
                           value="turnus07_19-25">
                    <label class="form-check-label" for="gridTurnus07_19-25">
                        19. - 25. července
                    </label>
                </div>
            </div>
        </fieldset>
        <div class="row mb-3">
            <label for="inputEmailParent" class="col-sm-2 col-form-label">E-mail rodiče</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="inputEmailParent">
            </div>
        </div>
        <div class="row mb-3">
            <label for="inputPhoneParent" class="col-sm-2 col-form-label">Telefon rodiče</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="inputPhoneParent">
            </div>
        </div>
        <p>* Položky označené hvězdičkou jsou povinné</p>
        <button type="submit" class="btn btn-primary">Objednat</button>
    </form>
</main>
</body>
</html>
