# Installation des Outils de Développement

Ce script d'installation a été créé pour faciliter la configuration d'un environnement de développement sur Ubuntu. Il installe divers outils et packages nécessaires pour le développement web, .NET, ainsi que d'autres outils populaires.

## Utilisation

1. **Téléchargement du script** : Utilisez `curl` pour télécharger directement le script depuis GitHub.

    ```bash
    curl -O https://raw.githubusercontent.com/ridha-boughediri/install_dev_tools/main/mon_install_dev_tools.sh
    ```

2. **Attribution des droits d'exécution** : Ouvrez un terminal et rendez-vous dans le répertoire où se trouve le fichier `mon_install_dev_tools.sh`. Utilisez la commande suivante pour attribuer les droits d'exécution au script :

    ```bash
    chmod +x mon_install_dev_tools.sh
    ```

3. **Exécution du script** : Exécutez le script en tant qu'administrateur avec la commande suivante :

    ```bash
    sudo ./mon_install_dev_tools.sh
    ```

4. **Suivez les instructions** : Le script installera automatiquement tous les outils et packages nécessaires. Suivez les instructions à l'écran.

## Vérification des Installations

Après avoir exécuté le script, vous pouvez vérifier les versions des outils installés pour vous assurer qu'ils ont été correctement installés :

```bash
git --version
docker --version
code --version
node -v
npm -v
google-chrome --version
dotnet --version
python --version
symfony --version
zsh --version
