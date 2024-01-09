<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les chaines</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les chaines de caractères</h1>
    <form action="#" method="post">
        <p>Saisir une chaine (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine"></p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>

    <% if (chaine != null && chaine.length() >= 6) { %>

        <%-- Obtention de la longueur de la chaîne --%>
        <% int longueurChaine = chaine.length(); %>
        <p>La longueur de votre chaîne est de <%= longueurChaine %> caractères</p>

        <%-- Extraction du 3° caractère dans votre chaine --%>
        <% char caractereExtrait = chaine.charAt(2); %>
        <p>Le 3° caractère de votre chaine est la lettre <%= caractereExtrait %></p>

        <%-- Obtention d'une sous-chaîne --%>
        <% String sousChaine = chaine.substring(2, 6); %>
        <p>Une sous-chaîne de votre texte : <%= sousChaine %></p>

        <%-- Recherche de la lettre "e" --%>
        <% char recherche = 'e'; 
           int position = chaine.indexOf(recherche); %>
        <p>Votre premier "e" est en : <%= position %></p>

        <h2>Exercice 1 : Combien de 'e' dans notre chaine de caractère ?</h2>
        <p>Ecrire un programme pour compter le nombre de lettres 'e' dans votre chaine de caractères : <%= chaine.split("e", -1).length - 1 %></p>

        <h2>Exercice 2 : Affichage vertical</h2>
        <p>Ecrire le programme pour afficher le texte en vertical :</p>
        <%
            for (int i = 0; i < chaine.length(); i++) {
                out.println(chaine.charAt(i) + "<br>");
            }
        %>

        <h2>Exercice 3 : Retour à la ligne</h2>
        <p>La présence d'un espace provoque un retour à la ligne :</p>
        <%
            for (int i = 0; i < chaine.length(); i++) {
                char currentChar = chaine.charAt(i);
                if (currentChar == ' ') {
                    out.println("<br>");
                } else {
                    out.print(currentChar);
                }
            }
        %>

        <h2>Exercice 4 : Afficher une lettre sur deux</h2>
        <p>Ecrire le programme pour afficher seulement une lettre sur deux de votre texte :</p>
        <%
            for (int i = 0; i < chaine.length(); i += 2) {
                out.println(chaine.charAt(i) + "<br>");
            }
        %>

        <h2>Exercice 5 : La phrase en verlan</h2>
        <p>Ecrire le programme afin d'afficher le texte en verlan :</p>
        <%
            for (int i = chaine.length() - 1; i >= 0; i--) {
                out.print(chaine.charAt(i));
            }
        %>

        <h2>Exercice 6 : Consonnes et voyelles</h2>
        <p>Ecrire le programme afin de compter les consonnes et les voyelles dans votre texte :</p>
        <%
            int nombreVoyelles = 0;
            int nombreConsonnes = 0;

            for (int i = 0; i < chaine.length(); i++) {
                char caractere = Character.toLowerCase(chaine.charAt(i));

                if (caractere == 'a' || caractere == 'e' || caractere == 'i' || caractere == 'o' || caractere == 'u') {
                    nombreVoyelles++;
                } else if (Character.isLetter(caractere)) {
                    nombreConsonnes++;
                }
            }

            out.println("Nombre de voyelles : " + nombreVoyelles + "<br>");
            out.println("Nombre de consonnes : " + nombreConsonnes);
        %>

    <% } else { %>
        <p>Veuillez saisir une chaîne avec au moins 6 caractères.</p>
    <% } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
