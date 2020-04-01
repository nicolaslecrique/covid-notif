# user stories covid-notif

## cas 1: onboarding. le user ouvre l'app 1ère fois, sans trop savoir en quoi ça consiste

Il voit une liste d'écran de type Onboarding / intro screens

1. Pourquoi ?
* Protegez vos proches et vous même contre le covid19.
* Soyez un rempart contre la propagation du virus et sauvez des vies

2. Comment ?
* Covid-Notif vous informe si vous avez été en contact avec une personne atteinte de covid19
* Vous pouvez ainsi vous isoler pendant la période d'incubation pour ne pas contaminer vos proches

3. Comment ça marche ?
* Vous n'avez qu'à attendre d'être notifié en cas de contact. Pas de nouvelle, bonne nouvelle
* Si vous êtes malade, un click suffit pour notifier les personnes avec qui vous avez été en contact

4. Et ma vie privée ?
* Vos déplacements recents sont conservés uniquement sur votre téléphone et de manière sécurisée
* Si vous êtes malade, l'information est transmise anonymement aux personnes avec qui vous avez été en contact
* Aucune information n'est stockée sur nos serveurs

NB: plugins pour faire l'onboarding
https://pub.dev/packages/introduction_screen#-readme-tab-
https://pub.dev/packages/intro_views_flutter#-readme-tab-

## cas 2: le user veut se déclarer malade

Sur la home-page 2 bouttons:
* Historique des contacts: liste d'emplacements et heures approximatives, ou message "Aucun contact rescensé"
* boutton rouge "Je suis malade" (avec popup de confirmation)

## cas 3: le user veut se déclare guéri

Sur la homme page: le boutton "je suis malade" est remplacé par un boutton vert "je suis guéri"

## cas 4: le user reçoit une notif

Le user click sur la notif => il est renvoyé vers l'écran "historique des contacts"