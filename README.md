# Projet Bibliophilea
### Projet final pour The Hacking Project

## Découpage du projet
Le front a été créé avec Vite et utilise React et Javascript. Le back a été créé en utilisant Rails. <br>
<br>
Lien du front du site en production : https://biblofront.vercel.app/ <br>
Lien du back du site en production : https://bibloback.fly.dev/<br>
<br>
Vous vous trouvez dans le back. 
## Description
Bienvenue sur notre plateforme dédiée aux passionnés de livres ! Que vous soyez un lecteur avide à la recherche de nouvelles découvertes ou un bibliophile désireux d'explorer une vaste bibliothèque virtuelle, vous êtes au bon endroit.

Notre site offre une base de données exhaustive regroupant une multitude de titres provenant de divers genres et époques. Que vous soyez fan de romans contemporains, de classiques intemporels, de thrillers palpitants ou de science-fiction captivante, vous trouverez assurément des ouvrages qui sauront éveiller votre intérêt.

L'inscription sur notre plateforme est simple et rapide. Une fois membre, vous pourrez créer votre propre liste de lecture personnalisée, enregistrant ainsi les livres qui vous intéressent le plus. Cette fonctionnalité vous permettra de garder une trace de vos livres préférés, de vos prochaines lectures ou de partager vos recommandations avec d'autres passionnés de lecture.

Rejoignez notre communauté de lecteurs passionnés dès aujourd'hui ! Venez découvrir, partager et discuter de vos livres préférés avec des personnes partageant les mêmes intérêts. Notre plateforme est un lieu d'échange et de convivialité où la passion pour la lecture est célébrée.

Ne perdez plus de temps à chercher votre prochaine lecture. Rejoignez-nous et plongez dans un univers infini de connaissances, d'aventures et d'émotions littéraires.

## Membres du groupe
- Lisa Daudibon ([@LisaDaudibon](https://github.com/LisaDaudibon))
- Karine Da Silva ([@KarineDHoshi](https://github.com/KarineDHoshi))

## Cahier des charges
- Users stories, disponible sur [Trello](https://trello.com/b/Z6enKCr3/bibliophilea)
- Design du site, disponible sur [Figma](https://www.figma.com/file/uRhLGqQICvoBwltWtevLgU/Bibliophilea---UX?type=design&node-id=23%3A74&mode=design&t=BE6TTDzn20AP1KKx-1)
- Parcours utilisateur, disponible sur [Lucid](https://lucid.app/lucidchart/c5b84471-91be-49ba-a42b-9e3b5f00db26/edit?invitationId=inv_df78d465-6c57-4837-98a1-e723a0ec80b7)
- Base de données, disponible sur [Lucid](https://lucid.app/lucidchart/be1afbe0-d56f-4f66-a56b-4dc367683c0e/edit?viewport_loc=-2352%2C-911%2C4096%2C1724%2C0_0&invitationId=inv_fd6ddcef-7bf7-40d4-ba60-c3853a03e6b7)

## Versions, gems et API utilisées
Ruby, 3.0.0, Rails 7.0, Postgresql 1.1. <br>
Gems de tests : [Rspec-rails](https://github.com/rspec/rspec-rails), [FactoryBot Rails](https://github.com/thoughtbot/factory_bot_rails), [NyanCatFormatter](https://github.com/mattsears/nyan-cat-formatter).  

## Lancement du programme en local
Vous ne pourrez pas créer d'utilisateur ou vous connectez en local mais vous pouvez tester la route Books si vous le souhaitez avec insomnia ou postman. <br>
Télécharger ou cloner le dossier en local. Lancer les commandes suivantes dans votre terminal : 
- `cd biblofront`
- `bundle install`
- `rails db:create`
- `rails db:migrate`
- `rails s` pour lancer le serveur

## Tester le programme en local
Pour utiliser les gems de tests, exécuter les lignes suivantes dans le terminal :
- `rspec` pour lancer les tests préparés.
- `rspec spec/models/user_spec.rb` pour lancer les tests sur un fichier spécifique.
- `rspec --format NyanCatFormatter` pour lancer les tests en utilisant la gem NyanCatFormatter.

## Diagramme ER base de données et user flow
Ci-dessous un diagramme entité-relation de la base de données utilisée et un diagramme du parcours utilisateur :

<img src=/app/assets/images/Bibliophilea.png width="700">
<img src=/app/assets/images/UserFlow_Bibliophilea.png width="700">