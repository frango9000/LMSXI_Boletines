for $x in doc("b37-B.xml")//libro
return 
if ($x/@tema = "Humanidades")
then <aburrido>{$x/titulo/text()}</aburrido>
else <entretenido>{$x/titulo/text()}</entretenido>