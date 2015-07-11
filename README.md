## Docker Machineの起動
### Docker MachineのVMがなかった場合

    $ docker-machine create -d virtualbox dev

### Docker MachineのVMが既にある場合

    $ docker-machine start dev

## Docker Machineの有効化
    // 起動確認。
    $ docker-machine ls
    // 環境変数等の確認。
    $ docker-machine env dev
    // 有効化(シェルに組み込んじゃってもいいかも？ もしくはAlias)
    $ eval "$(docker-machine env dev)")

## mongodbの使い方

    docker-compose run mongodb mongo --host mongodb
    
tutorial mongodb in the-little-mongodb-book

### insert

    db.unicorns.insert({name: 'Horny', dob: new Date(1992,2,13,7,47),
                  loves: ['carrot','papaya'], weight: 600,
                  gender: 'm', vampires: 63});
    db.unicorns.insert({name: 'Aurora', dob: new Date(1991, 0, 24, 13, 0),
                  loves: ['carrot', 'grape'], weight: 450,
                  gender: 'f', vampires: 43});
    db.unicorns.insert({name: 'Unicrom', dob: new Date(1973, 1, 9, 22, 10),
                  loves: ['energon', 'redbull'], weight: 984,
                  gender: 'm', vampires: 182});
    db.unicorns.insert({name: 'Roooooodles', dob: new Date(1979, 7, 18, 18, 44),
                  loves: ['apple'], weight: 575,
                  gender: 'm', vampires: 99});
    db.unicorns.insert({name: 'Solnara', dob: new Date(1985, 6, 4, 2, 1),
                  loves:['apple', 'carrot', 'chocolate'], weight:550,
                  gender:'f', vampires:80});
    db.unicorns.insert({name:'Ayna', dob: new Date(1998, 2, 7, 8, 30),
                  loves: ['strawberry', 'lemon'], weight: 733,
                  gender: 'f', vampires: 40});
    db.unicorns.insert({name:'Kenny', dob: new Date(1997, 6, 1, 10, 42),
                  loves: ['grape', 'lemon'], weight: 690,
                  gender: 'm', vampires: 39});
    db.unicorns.insert({name: 'Raleigh', dob: new Date(2005, 4, 3, 0, 57),
                  loves: ['apple', 'sugar'], weight: 421,
                  gender: 'm', vampires: 2});
    db.unicorns.insert({name: 'Leia', dob: new Date(2001, 9, 8, 14, 53),
                  loves: ['apple', 'watermelon'], weight: 601,
                  gender: 'f', vampires: 33});
    db.unicorns.insert({name: 'Pilot', dob: new Date(1997, 2, 1, 5, 3),
        loves: ['apple', 'watermelon'], weight: 650,
                  gender: 'm', vampires: 54});
    db.unicorns.insert({name: 'Nimue', dob: new Date(1999, 11, 20, 16, 15),
                  loves: ['grape', 'carrot'], weight: 540,
                  gender: 'f'});
    db.unicorns.insert({name: 'Dunx', dob: new Date(1976, 6, 18, 18, 18),
                  loves: ['grape', 'watermelon'], weight: 704,
                  gender: 'm', vampires: 165});
                  
### find

    db.unicorns.find({gender: 'm', weight: {$gt: 700}})
    db.unicorns.find({gender: {$ne: 'f'}, weight: {$gte: 701}})
    db.unicorns.find({vampires: {$exists: false}})
    db.unicorns.find({gender: 'f', $or: [{loves: 'apple'},
                                 {loves: 'orange'},
                                 {weight: {$lt: 500}}]})