<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Les tableaux</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les tableaux</h1>
    <form action="#" method="post">
        <p>Saisir au minimum 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine"></p>
        <p><input type="submit" value="Afficher"></p>
    </form>

    <%-- Récupération des valeurs --%>
    <% String chaine = request.getParameter("chaine"); %>

    <% if (chaine != null) { %>

        <%-- Division de la chaîne de chiffres séparés par des espaces --%>
        <% String[] tableauDeChiffres = chaine.split("\\s+"); %>
        <p>Le tableau contient <%= tableauDeChiffres.length %> valeurs</br>
        Chiffre 1 : <%= Integer.parseInt(tableauDeChiffres[0]) %></br>
        Chiffre 2 : <%= Integer.parseInt(tableauDeChiffres[1]) %></br>
        Chiffre 3 : <%= Integer.parseInt(tableauDeChiffres[2]) %></p>

        <h2>Exercice 1 : Le carré de la première valeur</h2>
        <p>Le carré de la première valeur est : <%= Math.pow(Integer.parseInt(tableauDeChiffres[0]), 2) %></p>

        <h2>Exercice 2 : La somme des 2 premières valeurs</h2>
        <p>La somme des deux premières valeurs est : <%= Integer.parseInt(tableauDeChiffres[0]) + Integer.parseInt(tableauDeChiffres[1]) %></p>

        <h2>Exercice 3 : La somme de toutes les valeurs</h2>
        <p>La somme de toutes les valeurs est :
            <%
                int somme = 0;
                for (String chiffre : tableauDeChiffres) {
                    somme += Integer.parseInt(chiffre);
                }
                out.print(somme);
            %>
        </p>

        <h2>Exercice 4 : La valeur maximale</h2>
        <p>La valeur maximale saisie par l'utilisateur est :
            <%
                int max = Integer.MIN_VALUE;
                for (String chiffre : tableauDeChiffres) {
                    int valeur = Integer.parseInt(chiffre);
                    if (valeur > max) {
                        max = valeur;
                    }
                }
                out.print(max);
            %>
        </p>

        <h2>Exercice 5 : La valeur minimale</h2>
        <p>La valeur minimale saisie par l'utilisateur est :
            <%
                int min = Integer.MAX_VALUE;
                for (String chiffre : tableauDeChiffres) {
                    int valeur = Integer.parseInt(chiffre);
                    if (valeur < min) {
                        min = valeur;
                    }
                }
                out.print(min);
            %>
        </p>

        <h2>Exercice 6 : La valeur la plus proche de 0</h2>
        <p>La valeur la plus proche de 0 est :
            <%
                int plusProcheDeZero = Integer.parseInt(tableauDeChiffres[0]);
                for (String chiffre : tableauDeChiffres) {
                    int valeur = Integer.parseInt(chiffre);
                    if (Math.abs(valeur) < Math.abs(plusProcheDeZero)) {
                        plusProcheDeZero = valeur;
                    }
                }
                out.print(plusProcheDeZero);
            %>
        </p>

        <h2>Exercice 7 : La valeur la plus proche de 0 (2° version)</h2>
        <p>La valeur la plus proche de 0 (chiffres positifs ou négatifs) est :
            <%
                int plusProcheDeZeroV2 = Integer.parseInt(tableauDeChiffres[0]);
                for (String chiffre : tableauDeChiffres) {
                    int valeur = Integer.parseInt(chiffre);
                    if (Math.abs(valeur) == Math.abs(plusProcheDeZeroV2) && valeur > 0) {
                        // En cas d'égalité, on prend le chiffre positif
                        plusProcheDeZeroV2 = valeur;
                    } else if (Math.abs(valeur) < Math.abs(plusProcheDeZeroV2)) {
                        plusProcheDeZeroV2 = valeur;
                    }
                }
                out.print(plusProcheDeZeroV2);
            %>
        </p>

    <% } %>
    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
