
## Exo 8 : Votre application sur le Cloud (Noté)

Pour la prochaine fois, trouvez une application que vous voudriez héberger dans Kubernetes (de préférence avec plusieurs composants comme une app et une bdd).

Le but va être de :

- Créer une image docker de votre application
- Pousser cette image sur ma registry harbor.kakor.ovh
- Créer les éléments d'infrastructure permettant de déployer votre applicatif
- Vérifier le bon fonctionnement et l'exposition
- Faire une analyse de vulnérabilité sur votre image.
- Tenter d'intégrer tout ça dans une pipeline CI/CD sur Github ou Gitlab.

Afin de trouver le bon emplacement de stockage, regardez la documentation de MariaDB sur Docker Hub.

Créez une table et vérifier qu'après suppression du pod, la donnée est persisté.

## Exo 9 : Mise en place de github action

### Prérequis

- Créer un nouveau repo Github
- Récupérez les sources du dossier tp-continu
- Récupérez un token d'accès à Openshift via la commande donnée dans l'interface d'Openshift (voir le token généré en début d'initilisation)
- Récupérez le nom d'utilisateur (ipi) et le mot de passe habituel pour accéder à harbor.kakor.ovh

### Les actions à réaliser

Il faudra mettre en place deux étapes pour commencer sur votre déploiement :

- Une étape pour build et push votre image (potentiellement découpé en deux)
- Une étape pour déployer (utilisez des fichiers yaml dans un dossier spécifique de votre repo)
