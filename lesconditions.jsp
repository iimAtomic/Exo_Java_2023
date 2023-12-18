<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur B : <input type="text" id="inputValeur" name="valeur2">
    <p>Saisir la valeur C : <input type="text" id="inputValeur" name="valeur3">
    <p><input type="submit" value="Afficher">
</form>
   
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>

<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>
    <% String valeur3 = request.getParameter("valeur3"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int V1 = Integer.parseInt(valeur1); %>
        <% int V2 = Integer.parseInt(valeur2); %>
        <% int V3 = Integer.parseInt(valeur3); %>

<%    
    if( V3>V1 && V3<V2){
out.println("<br>");
out.println("<br>");
    out.print("Le nombre C est compris entre A et B");
}else{
out.println("<br>");
out.println("<br>");
    out.print("Le nombre C n'est pas compris entre A et B gnegnegne");
}


%>
<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>



<%

if(V3%2==0){
out.println("<br>");
out.println("<Le nombre est paire");
}else{
out.println("<br>");
out.println("le nombre est impaire");
}


%>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
