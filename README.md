# Boutique en ligne...

lien de l'app en prod : https://boutique-en-ligne.herokuapp.com/

Sur Heroku y'a pas grand chose, tu dois pouvoir te connecter, mais y'a même pas de photos en base donc tu vois rien. Tu peux essayer de créer un item sur https://boutique-en-ligne.herokuapp.com//items/new mais pas sûr que ça marche (astive storage toussa toussa). Et impossible d'ajouter au panier...

Sinon ça marche en local, si t'as la foi de l'installer...

`git clone https://github.com/arnaudgr/boutique_en_ligne.git`

`bundle install`

`rails db:create`

`rails db:migrate`

`rails s` et aller sur `localhost:3000`
