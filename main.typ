#import "template.typ": *

#let skills = (
    "langages": 
    ( 
     Typescript: ( name: "Typescript", icon: image("icons/typescript.svg", height: 1.4em) ),
     Javascript: ( name: "Javascript", icon: image("icons/javascript.svg", height: 1.4em) ),
     PHP: ( name: "PHP 5+", icon: image("icons/php.svg", height: 1em), iconInset: 0.2em),
     Rust: ( name: "Rust", icon: image("icons/rust.svg", height: 1.4em) ),
     Bash: ( name: "Bash", icon: image("icons/bash.svg", height: 1.4em) ),
     Powershell: ( name: "Powershell", icon: image("icons/powershell.svg", height: 1.4em) ),
     Python: ( name: "Python", icon: image("icons/python.svg", height: 1.4em) ),
   ),
    "front-end": 
    ( ReactJS: ( name: "ReactJS", icon: image("icons/react-js.svg", height: 1.4em) ),
     VueJS3: ( name: "VueJS 3", icon: image("icons/vue-js.svg", height: 1.4em) ),
     VueJS2: ( name: "VueJS 2", icon: image("icons/vue-js.svg", height: 1.4em) ),
     Angular: ( name: "Angular 2+", icon: image("icons/angular.svg", height: 1.4em)),
     ReactNative: ( name: "ReactNative", icon: image("icons/react-js.svg", height: 1.4em) ),
     Tailwind: ( name: "Tailwind", icon: image("icons/tailwind.svg", height: 0.8em), iconInset: 0.25em),
     ChakraUI: ( name: "ChakraUI", icon: image("icons/chakra-ui.svg", height: 1.4em)),
     Pinia: ( name: "Pinia", icon: image("icons/pinia.svg", height: 1.4em)),
   ),
   "back-end": 
    ( 
     NodeJS: ( name: "NodeJS", icon: image("icons/nodejs.svg", height: 1.4em) ),
     Symfony: ( name: "Symfony", icon: image("icons/symfony.svg", height: 1.4em) ),
     Laravel: ( name: "Laravel", icon: image("icons/laravel.svg", height: 1.4em) ),
     Deno: (name: "Deno", icon: image("icons/deno.svg"), height: 1.4em),
     Java: (name: "Java", icon: image("icons/java.svg"), height: 1.4em),
   ),
   "test": 
    ( 
     Jest: ( name: "Jest", icon: image("icons/jest.svg", height: 1.4em) ),
     Cypress: ( name: "Cypress", icon: image("icons/cypress.svg", height: 1.2em), iconInset: 0.3em ),
     FakerJS: ( name: "FakerJS", icon: image("icons/fakerjs.svg", height: 1.4em) ),
   ),
  Outils: (
    VSCode: (name: "VSCode", icon: image("icons/vscode.svg", height: 1.1em), iconInset: 0.1em),
    NextJS: (name: "nextJS", icon: image("icons/next-js.svg", height: 1.1em), iconInset: 0.1em),
    ViteJS: (name: "VitejS", icon: image("icons/vitejs.svg", height: 1.1em), iconInset: 0.1em),
    Nuxt: (name: "Nuxt", icon: image("icons/nuxt.svg", height: 1.1em), iconInset: 0.1em),
    Tauri: (name: "Tauri", icon: image("icons/tauri.svg", height: 1.1em), iconInset: 0.1em),
    Storybook: (name: "Storybook", icon: image("icons/storybook.svg", height: 1.1em), iconInset: 0.1em),
    Ansible: (name: "Ansible", icon: image("icons/ansible.svg", height: 1.1em), iconInset: 0.1em),
  ),
  "Organisation": (
    Scrum: (name: "Scrum", icon: image("icons/scrum.svg", height: 1.4em)),
    Kanban: (name: "Kanban", icon: image("icons/kanban.svg", height: 1em), iconInset: 0.25em),
    Gitlab: (name: "Gitlab", icon: image("icons/gitlab.svg", height: 1.4em)),
    Jira: (name: "Jira", icon: image("icons/jira.svg", height: 1.4em)),
  ),
  "DevOPS": (
    Gitlabcicd: (name: "Gitlab CI/CD", icon: image("icons/gitlab.svg", height: 1.4em)),
    Jenkins: (name: "Jenkins", icon: image("icons/jenkins.svg", height: 1.4em)),
    Docker: (name: "Docker", icon: image("icons/docker.svg", height: 1.4em)),
    ELK: (name: "ELK", icon: image("icons/elk.svg", height: 1.4em)), 
  ),
    "OS": (
    Linux: (name: "Linux (Ubuntu / Fedora)", icon: image("icons/tux.svg", height: 1.4em)),
    Windows: (name: "Windows", icon: image("icons/windows.svg", height: 1.4em)),
    Android: (name: "Android", icon: image("icons/android.svg", height: 1.4em)),
  ),
    "Cloud": (
      AWS: (name: "AWS", icon: image("icons/aws.svg", height: 0.8em), iconInset: 0.4em),
      "Google Cloud": (name: "Google Cloud", icon: image("icons/google-cloud.svg", height: 1.4em)),
      OVH: (name: "OVH", icon: image("icons/ovh.svg", height: 1em), iconInset: 0.25em),
  ),
    "SGBD": (
      PostgreSQL: (name: "PostgreSQL", icon: image("icons/postgresql.svg", height: 0.8em), iconInset: 0.4em),
      MySQL: (name: "MySQL", icon: image("icons/mysql.svg", height: 0.8em), iconInset: 0.4em),
      Firestore: (name: "Firestore", icon: image("icons/firestore.svg", height: 1.4em)),
      MongoDB: (name: "MongoDB", icon: image("icons/mongodb.svg", height: 1em)),
      ElasticSearch: (name: "ElasticSearch", icon: image("icons/elasticsearch.svg", height: 1em)),
      Kafka: (name: "Kafka", icon: image("icons/kafka.svg", height: 1em)),
      RabbitMQ: (name: "RabbitMQ", icon: image("icons/rabbitmq.svg", height: 1em)),
  )
);

// It's to choose skills easiers
#let skillsValues = skills.values().join()

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "DOSSIER DE COMPÉTENCES",
  author: yaml("author.yml"),
  skills: skills
)


= EXPÉRIENCES PROFESSIONNELLES

#mission(
  [BearStudio <bearstudio>], 
  role: "Développeur Senior", 
  beginingDate: "juin 2021",
  endDate: "décembre 2022",
  duration: "1,5an",
  contexte: [
    Le BearStudio avait besoin d'un développeur supplémentaire pour développer leurs projets. 
    
    J'ai partager mon expérience, encadrer des juniors et rempli mes missions en autonomie a la fois en interne et en régie pour #link(<magnolia>, [Magnolia]).
  ],
  missions: [  
  - #linkLabel([Mission en régie de 7 mois chez Magnolia], <magnolia>)
  - Développement projets ReactJS / TypeScript
  - Développement application tablette avec React Native
  - Développement extension Boondmanager avec NextJS / ReactJS / TypeScript
  - Conception des projets et mise en place des types TS de bases
  - Migration d'un projet Angular a React
  - Mise en place de bonne pratique pour renforcer la sécurité des projets
  - Suivi projets interne développé par des juniors
  - Développement thème Wordpress avec intégration stripe personnalisé
  - Renfort développement fonctions API JAVA
  - Installation du réseau de l'entreprise
],
skillsConcerned: (
  skillsValues.Typescript,
  skillsValues.ReactJS,
  skillsValues.NextJS,
  skillsValues.VueJS3,
  skillsValues.ReactNative,
  skillsValues.PHP,
  skillsValues.NodeJS,
  skillsValues.MySQL,
  skillsValues.Gitlabcicd,
  skillsValues.Docker,
  skillsValues.Storybook
)
)


  #mission(
  [Magnolia.fr <magnolia>], 
  role: "Lead Dev en régie 4/5 jours semaine", 
  beginingDate: "mars 2022", 
  endDate: "décembre 2022",
  duration: "9mois",
  contexte: [
    #link(<bearstudio>, [Au sein du BearStudio]), j'ai fait une prestation de 9 mois en régis chez Magnolia de 4 à 5 jours/semaine.

    Suite au départs des Lead-dev ainsi de la loi lemoine qui augmente les opportunités du marché de Magnolia.fr.
    J'ai eu l'occasion d'intervenir avant de remplacé le lead-dev front.
    
    De cette manière j'ai participé à faire grandir l'équipe afin de répondre aux besoins métiers dans un moment important de leur développement.
  ],
  missions: [
  - Remplacement des tech lead suite à leurs départs
  - Gestion projet interne pour automatiser et suivre les résiliations de contrats (Scrum)
    - Suivi de la qualité du projet
    - VueJS 3
    - PHP symfony
  - Amélioration / Maintien du site vitrine
    - Amélioration SEO
    - Modification sur le formulaire de comparaison
    - Amélioration de la robustesse du site lors de forte influence
  - Mise en place de l'amélioration de la Définition of Done des projets
  - Mise en place des CI / CD des projets
  - Dockerisation des projets pour réduire le temps d'installation et l'uniformisation des environnements des développements
  - Etude de la MAJ de Gitlab de la v9 à la v13
  - Mise en place de Cloudwatch sur les logs des APIs
],
skillsConcerned: (
  skillsValues.Javascript,
  skillsValues.Typescript,
  skillsValues.VueJS3,
  skillsValues.VueJS2,
  skillsValues.ViteJS,
  skillsValues.PHP,
  skillsValues.Symfony,
  skillsValues.MySQL,
  skillsValues.Gitlabcicd,
  skillsValues.Docker,
  skillsValues.Jira,
  skillsValues.Scrum,
  skillsValues.AWS
)
)


#mission(
  [SII  ROUEN <SII>], 
  role: "Ingénieur Etudes & Développements", 
  beginingDate: "mai 2018", 
  endDate: "décembre 2020",
  duration: "1 an",
  contexte: [
    #link(<bearstudio>, [Au sein du BearStudio]), j'ai fait une prestation de 9 mois en régis chez Magnolia de 4 à 5 jours/semaine.

    Suite au départs des Lead-dev ainsi de la loi lemoine qui augmente les opportunités du marché de Magnolia.fr.
    J'ai eu l'occasion d'intervenir avant de remplacé le lead-dev front.
    
    De cette manière j'ai participé à faire grandir l'équipe afin de répondre aux besoins métiers dans un moment important de leur développement.
  ],
  missions: [
    - #linkLabel([Mission en régie 1 an chez SFR], <sfr>)
    - #linkLabel([Mission en régie 1 an chez Orange], <orange>)
    - Animation d’une conférence sur la sécurité « by design » (Avril 2019)
    - Animation d’un Mob Programming en 2018
    - Création d’une offre de service
    - Présention DevOPS
      - Démonstration d'une solution à partir de Gitlab et ses outils de pipeline pour automatiser la chaîne d'intégration et de déploiement (CI/CD) continu sur un projet JavaScript basique.
      - Intégration des outils d'analyse de code
      - Vérification des packages
      - Sécurisation des données de production dans les "variables secrètes" de Gitlab
      - Cloisonnement par Docker
      - Déploiement automatique et sécurisation des accès
],
skillsConcerned: (
  skillsValues.Javascript,
  skillsValues.Typescript,
  skillsValues.Gitlabcicd,
  skillsValues.Docker,
  skillsValues.Scrum,
)
)


#mission(
  [SFR <sfr>], 
  role: "Ingénieur Etudes & Développements", 
  beginingDate: "septembre 2019", 
  endDate: "décembre 2020",
  duration: "+1 an",
  contexte: [
    #link(<SII>, [Au sein du SII]), j'ai fait une prestation de 15 mois en régis chez SFR de 5 jours/semaine.

    Ma mission été essentiellement plus de l'ordre réseau et gestion de projet. Le développement étant moins présent sur cette mission. _(\~3mois de PHP)_

    Elle été pour moi l'occasion d'avoir un poste différent qui correspond à ma polyvalence et de progresser sur la gestion de projet.
  ],
  missions: [
- Projet :Migration d'un serveur RADIUS
  - Prise de connaissance de l'actuel
  - Création maquette pour la migration
  - Étude des prix matériel et humain pour la migration
  - Étude de l'impact sur le réseau de la migration
  - Mise en place des procédures logiciel / matériel et réseau
  - Mise en application de la procédure logiciel
  - Suivi du projet
  - Création de la documentation
  - Mise en place d’un outil d’observabilité (ELK) pour le nouveau service
  radius

- Projet : Migration API SOAP JAVA à PHP pour assurer une meilleure maintenabilité
  - Étude de faisabilité
  - Développement de la nouvelle API
],
skillsConcerned: (
  skillsValues.PHP,
  skillsValues.Java,
  skillsValues.Docker,
  skillsValues.ElasticSearch,
  skillsValues.ELK,
  skillsValues.Linux,
)
)


#mission(
  [Orange <orange>], 
  role: "Développeur FullStack", 
  beginingDate: "mai 2018", 
  endDate: "décembre 2020",
  duration: "1 an",
  contexte: [
    #link(<SII>, [Au sein du SII]), j'ai fait une prestation de 1 an en régis chez Orange de 5 jours/semaine.

    Orange utilise une application de plus de 10ans qui à évoluer grâce au développement qu'un de ses managers à entreprit pour facilité son travail.

    Avec le temps, tout les managers utilises cette application.

    Des ajouts de fonctionnalités importantes étant souhaités par les managers. Il ont eu pour souhait de prendre un prestataire afin d'assurer le développement de ces derniers et d'assurer sa maintenabilité.

    L'enjeu était d'utiliser le code ancien tout en adoptant une structure moderne sur les nouvelles fonctionnalités.
  ],
  missions: [
    - Développement de l’application WEB en VueJS et PHP (Zend Framework)
      - Création de services web « API REST PHP » consommé par le front en VueJS
      - Synchronisation de fichiers XLS avec la base de données
      - Modules de synchronisations BDD <-> Flux CFT
      - Génération de fichiers géoJson _(liaison des communes pour l’organisation Orange avec l’INSEE)_
      - Intégration d'une application moderne en VueJS2 sur une application existante.
      - Création d’une carte interactive avec Leaflet
      - Système de gestion des techniciens
      - Système de gestion des plannings
      - Système de gestion des zones de couvertures
      - Système d’administration
      - Utilisation du thème Vuetify
      - Gestion de mise en cache des données _(Vuex, maintenant appelé Pinia)_
      
  - Rédaction documentations techniques
  - Rédaction guide utilisateur
  - Formation d’un ingénieur sur VueJS2
    - Maintenance et création d’un composant
    - Principe de la séparation de l’application Client / Serveur
    - Utilisation des services
    - Utilisation de Vuex (Store local)
],
skillsConcerned: (
  skillsValues.Javascript,
  skillsValues.VueJS2,
  skillsValues.Pinia,
  skillsValues.PHP
)
)

#mission(
  [Ofelias <ofelias>], 
  role: "Ingénieur DevOPS", 
  beginingDate: "Août 2017", 
  endDate: "janvier 2018",
  duration: "6 mois",
  contexte: [
    Ofélias été une entreprise de sous-traitance de support informatique afin de permettre au PME d'avoir un support IT pour un coût moins élever qu'avec un salarié à plein temps chez eux.

    Cela se traduit aussi avec beaucoup d'intervention qui se ressemble. Donc dans l'optique de réduire encore les coûts des parcs informatiques sous leurs responsabilités. Il ont fait appel à moi afin d'automatisé les tâches répétitive.
    
    De plus cela leur à permis de répondre à quelques besoins de développement de leurs clients 
  ],
  missions: [
  - Optimisation des processus de maintenance client 
    - Apporter une culture de l’automatisation
    - Optimiser le temps de travail des techniciens d’Ofelias.
    - Automatisation des tâches via des scripts Powershell
      - Modifier et traiter des fichiers Excel
    - Création d’une application interne en Angular 4 et NodeJS permettant la traçabilité des activités des techniciens
    - Hébergement de l’application sous Linux Debian, Apache, Node JS
    - Création et modification d’extension WordPress en PHP
    \
  
  - Mise en Réseau pour Normandie WebSchool
    - Analyse de l’état de l’art en vue de la création du Système d’Information sous Windows Server, Hyper V, Active Directory et via les problématiques de Mappage Réseaux
    - Création d’un serveur interne, de 3 réseaux distincts (réseaux Élèves, Professeurs & Administration), de 3 bornes Wi-Fi et d’un portail de connexion
    - Mise en place du pare feu via PfSense
    - Configuration du réseau intranet (Mappage Réseaux)
    - Mise en place des règles de sécurité via PfSense, Active Directory.
],
skillsConcerned: (
  skillsValues.Typescript,
  skillsValues.Angular,
  skillsValues.PHP,
  skillsValues.NodeJS,
  skillsValues.Linux,
  skillsValues.Windows,
  skillsValues.Powershell
)
)

#mission(
  veryLong: true,
  [Bearstudio 2015 <bearstudio2015>],
  role: "Co-Fondateur - Développeur FullStack - DevOPS", 
  beginingDate: "Novembre 2015", 
  endDate: "Mai 2017",
  duration: "1 an et 7 mois",
  contexte: [
    Suite à la rencontre avec mes associés. J'ai eu l'occasion de co-fondé le Bearstudio.

    *Son but :* Apporté une équipe technique pour les entreprises et projets qui souhaites développer une solution numérique.

    Mes casquettes été multiple. Et nous avons beaucoup d'enjeux puisque nous avons plusieurs projets développer en même temps afin de sécurisé le développement de l'entreprise. 
    
    #set list(indent: 2em)
    - 60% Développement Full-Stack
    - 30% DevOps / Sysadmin
    - 10% Entreprenariat
    
    Cette expérience m'a apporté beaucoup. Nous avons commencé à 3 et lorsque je suis parti nous étions 5.
    
    Après plus d'un an. J'ai eu le souhaits de découvrir les stuctures plus traditionnel lorsque j'ai eu l'occasion afin d'affiner ma vision du monde de l'entreprise.

    #linkLabel([Vous pouvez aussi voir dans ce CV que je suis revenu pendant +1 ans en 2022], <bearstudio>)
  ],
  missions: [
  #block(breakable: false, [
  - *Interne*
      - *Enjeu :* Développer les outils internes afin de développeur en interne éfficacement et rapidement.
      - Au niveau de l’équipe : 5 collaborateurs graphistes, intégrateurs et développeurs.
      - Mise en place des Intégrations continu avec Jenkins
      - Administration et maintenance sous Linux Debian de la quinzaine de VM installées sur les serveurs physiques avec un système Proxmox
      - Déploiement de masse avec Ansible
      - Monitoring des 120 services hébergés via Shinken (dérivé de Nagios)
      - Vérification de la qualité de développement à partir des merges request
    ])
\
  - *Assystem*
    - #linkLabel([Développement en régie 4 jours/semaines chez Assystem], <assystem>)
      
  #block(breakable: false, [
  - *Projet METIGATE*
      - *Enjeu :* Optimiser la météo-dépendance d’une entreprise.
      - Création de l’importation des données publiques météo dans la base de données
      - Serveur RabbitMQ gérant 3 services indépendants afin d’importer cette donnée
      - Implication de 4VM ainsi que d’une importante chaîne d’automatisation via Jenkins
      - Maintenance de leur API en Java, MySQL, Docker
      - Optimisation des performances de l’API
      - Développement de leur projet « WeatherToAction » sous Angular JS
      - Suivi & Conseil au long du développement de leur application
      - Monitoring et exploitation des logs de leurs applications
      - Installations automatisées de leurs services via Ansible
    ])

      \
      
  #block(breakable: false, [
  - *Projet MARCHE-PRIVE*
    - *Enjeu :* Optimiser le site E-commerce de la société Marché-Privé qui a pour objectif de créer le contact entre l’artisan et le client.
  
    -  Migration de serveurs (Linux Debian) et d’applications web
    - Audit de l’état de l’art (Logiciel Proxmox) et mise en place des nouvelles configurations logicielles
    - Réinstallation de Proxmox et de 3 nouvelles VM
    - Refontes de leurs règles « iptables » (règles de pare-feu)
    - Installation des services de production via PHP, Apache et MySQL
    - Mise à jour des scripts de backup et de reports via logwatch
    - Consultation sur les aspects Développement et Système en PHP (symfony 3, Twig), Apache, MySQL
    ])
    \
    
  #block(breakable: false, [
  - *Projet POWERTRAFFIC*
    - *Enjeu :* Développement d’une application permettant de proposer des solutions de monitoring de leur visibilité internet, en utilisant des API Google.
    -  Formation des développeurs de Powertraffic sur les activités de développement et de déploiement de l‘application
    - Consultation sur les aspects Développement en PHP, Apache, MySQL
    - Utilisations des API externes (API SemRush)
    ])
    \

  #block(breakable: false, [
  - *Projet HOLIBAG*
    - *Enjeu :* Consigner ses affaires personnelles auprès des commerçants en un laps de temps réduit : moins de 72 heures.
    - Audit de l’état de l’art en API Python v2
    - Première version de leur application front sous Angular JS et Pug
  ])
],
skillsConcerned: (
  skillsValues.Javascript,
  skillsValues.Angular,
  skillsValues.Gitlab,
  skillsValues.Jenkins,
  skillsValues.Docker,
  skillsValues.ElasticSearch,
  skillsValues.PHP,
  skillsValues.Symfony,
  skillsValues.MySQL,
  skillsValues.Kanban,
  skillsValues.Scrum,
  skillsValues.RabbitMQ,
  skillsValues.Python,
  skillsValues.Linux,
  skillsValues.Ansible
)
)


#mission(
  [Assystem <assystem>], 
  role: "Développeur Front-end", 
  beginingDate: "Février 2026", 
  endDate: "Mai 2016",
  duration: "4 an",
  contexte: [
    #link(<bearstudio2015>, [Au sein du BearStudio]), j'ai fait une prestation de 4 mois en régis chez Assystem de 4 jours/semaine.


    Nous avions des compétences en AngularJS et Assystem avais des enjeu lors de la conception d'une application avec ce langages récent.


    J'ai donc participé au début de ce projet en tant que prestation.


    Le but de ce projet étant la création d’applications sur la qualité nucléaire afin d’optimiser les enjeux de sécurité et d’intégrité des données
  ],
  missions: [
    - Supervision de l’architecture AngularJS afin d’organiser le projet
    - Formation des stagiaires et des collaborateurs en Angular JS
    - Livraison de la première version
],
skillsConcerned: (
  skillsValues.Javascript,
  skillsValues.Angular,
)
)




#mission(
  veryLong: true,
  [Bonus <bonus>],
  role: "Développeur Front-end", 
  beginingDate: "Mai 1995", 
  endDate: "Présent",
  duration: "28 ans",
  contexte: [
    Je suis un grand passionné de l'informatique depuis toujours. De plus j'ai une activité d'auto-entrepreneur depuis le début de ma vie active.


    Cela inclut des petites activités annexes pour des missions et pour le loisir.


    Je les inclus ici afin de vous permettre d'avoir un visu
  ],
  missions: [


    - *Passtauri* _Début en mai 2023_
      - Projet libre avec Tauri utilisant Rust et NextJS
      - Versionning sur github : #link("https://github.com/tibs245/passtauri")
      - Utilisation de Rust
      - Chiffrage / Déchiffrage des mots de passe via GPG


    - *Formations* _(En tant que intervenant)_
      - Cours Docker chez SUPINFO en 2019 et 2020
      - Cours sur le déploiement automatique _(Ansible, Puppet, Chef)_ en 2019 et 2020
      - Cours sur ReactJS et NextJS chez NeedForSchool en 2023
      
    - *Hébergement et maintien d'un serveur familliale* _Depuis 2016_
      - Hébergement mail (D'où le kolombo.fr)
      - Hébergement de plusieurs services internes dont Gitlab et Nextcloud


    - *Développement et hébergement de quelques applications WEB*
      - Via missions freelance courtes
   
    - *Electronique*
      - Système de lumière avec un éclairage bande LED avec des ESP8266 que j'ai pour but d'upgrade avec des LED (ws2812b) combiné à des ESP32 pour diminuer légèrement la consommation de veille et donc recharger moins souvent les batteries.
      - Le but étant de mettre de l'éclairage sur des meubles en hauteur sans prises et ne pas avoir de câble apparent
      - Même système très utile pour les décorations de Noël
        - La partie ESP32 n'a jamais pu être finalisé parce que je souhaites une vrai app avec #link("https://github.com/BearStudio/start-ui-native", [Start-UI Native]) sur lequel j'ai participer à l'implémenté le Bluetooth mais le framework graphique a des problème de performance depuis +1ans
      - Pédagogie pour enfants avec un Microbit
      - Intéraction entre application React Native et un Microbit
      - Système de caméra surveillance avec un Raspberry pi et des caméra Eye toy play
      - Automatisation de taches avec Automate et Ntag215
      - Impression 3D (J'ai eu une imprimante Artillery 3D Sidewinder 2ans) qui m'a servi essentiellement à imprimer des choses pour les autres
      - Concernant les Raspberry Pi j'ai tout les modeles, ils m'ont servi à faire des proxys, des systèmes multimédia pour diffuser de la musique via le WIFI (avant le chrome cast audio), à faire du monitoring et à connecter des imprimantes aux wifis.
      - Capteur de profondeur avec des ultrasons
      - Début de projets de détection d'humidité / température / CO² dans les pièces. Pas encore sorti de ma tête


],
skillsConcerned: (
  skillsValues.Javascript,
  skillsValues.Typescript,
  skillsValues.Deno,
  skillsValues.ReactJS,
  skillsValues.NextJS,
  skillsValues.Cypress,
  skillsValues.ReactNative,
  skillsValues.Rust,
  skillsValues.PHP,
  skillsValues.Linux,
  skillsValues.Docker,
  skillsValues.Ansible
)
)


= Formations et Langues


- 2015 – Analyste développeur à l’Exia Cesi – Mont-Saint-Aignan
- 2013 – Bac professionnel SEN _(Système Électronique et Numérique)_ au lycée GRIEU à Rouen


Anglais technique : lu et écrit