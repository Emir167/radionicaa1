// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ugovor{
    /*bool imaOmiljeniBroj = true;
    int omiljeniBroj = 55;
    //uint == uint256;
    string zeleni = "Zeleni";
*/
    //address adresa = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //bytes bajtovi = "string";

    uint256 mojOmiljeniBroj = 5;
    //mojOmiljeniBroj = 10;

    function skladisti(uint256 _mojOmiljeniBroj) public{
        mojOmiljeniBroj = _mojOmiljeniBroj;
    }
    //Vidljivost: public, private, external, internal
    
    function vraca() public view  returns(uint256){
        return mojOmiljeniBroj;
    }
    //view i pure
    

    //Nizovi i strukture

    uint256[] niz;

    struct Osoba{
        uint256 omiljeniBroj;
        string ime;
    }

    Osoba public mojPrijatelj = Osoba(5, "Zeleni");

    //Osoba public osoba = Osoba({omiljeniBroj:7, ime: "Zeleni"});

    Osoba[] public listaLjudi;

    function dodajOsobu(string memory _ime, uint256 _omiljeniBroj) public{
        Osoba memory novaOsoba = Osoba(_omiljeniBroj,_ime);
        listaLjudi.push(novaOsoba);
        imeUOmiljeniBroj[_ime] = _omiljeniBroj;
    } 

    //Mapiranje

    //mapping(kljuc=>vrednost) 

    mapping(string=>uint256) public imeUOmiljeniBroj;

}
