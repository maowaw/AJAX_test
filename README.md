Bon matin !

Bienvenue sur cette pâle copie de gmail, sur laquelle tu pourras avoir l'impression d'avoir plein d'amis en générant des mails, que tu pourras également supprimer. Voilà.
Pour se servir de ce super site, il te suffit de rentrer sur ton terminal :

		$ git clone https://github.com/maowaw/AJAX_test.git
 
Puis : 

		$ bundle install

Ensuite pour générer la base de données : 

		$ rails db:create
		$ rails db:migrate
		$ rails db:seed

Enfin, lance le serveur sur ta console :

		$ rails s

Voila, il suffit d'aller sur ton serveur web et charger la page 

		http://localhost:3000/
