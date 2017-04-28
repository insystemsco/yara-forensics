/*
    Description: This finds the magics on dump files, like raw dd image.
    Disclaimer: This can though false positives.

    Contributors:
      - Jaume Martin <@Xumeiquer>
*/

rule contains_7z: _7z
{
    meta:
        author = "Jaume Martin"

    strings:
        $a = {37 7A BC AF 27 1C}

    condition:
       $a
}
