class Game {

    constructor(name, HP, MP, weapon) {
        this.name = name;
        this.HP = HP;
        this.MP = MP;
        this.weapon = weapon;
    }

    get name(){
        return this._name;
    }

    get HP(){
        return this._HP;
    }

    get MP(){
        return this._MP;
    }

    get weapon(){
        return this._weapon;
    }

    attack() {
        console.log(`${this._name}が攻撃しました。`);
    }

}

class Yusha extends Game{
    constructor(name, HP, MP, weapon)
}

class Yusha extends Game{
    constructor(name, HP, MP, weapon)

    magic() {
        console.log(`${this._name}が魔法をかけました。`);
    }

class Enemy extends Game{

constructor(name, HP, MP, weapon) {
    super(name, HP, MP, weapon);
}

}
